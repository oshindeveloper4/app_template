import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/users/users_state.dart';
import '../../bloc/users/users_bloc.dart';
import '../../bloc/users/users_events.dart';

class UserDisplay extends StatefulWidget {
  @override
  _UserDisplayState createState() => _UserDisplayState();
}

class _UserDisplayState extends State<UserDisplay> {
  UsersBloc usersBloc;
  @override
  void initState() {
    usersBloc = BlocProvider.of<UsersBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext build) {
    return Column(
      children: [
        BlocBuilder<UsersBloc, UsersState>(
          builder: (context, state) {
            if (state is UsersSuccess) {
              return Center(
                child: Text(state.name),
              );
            }

            if (state is UsersFailure) {
              return Text('failure');
            }

            if (state is UsersLoading) {
              return Text('loading');
            }

            print(state);
            return Text('empty widget');
          },
        ),
        Center(
            child: FlatButton(
          child: Text('load user data'),
          onPressed: () {
            usersBloc.add(FetchUsers());
          },
        )),
      ],
    );
  }
}
