import 'package:app_template/modules/user/bloc/users/users_repository.dart';

import 'package:app_template/modules/user/models/user.dart';

import 'package:app_template/services/api/api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './users_repository.dart';
import './users_events.dart';
import './users_state.dart';

class UsersBloc extends Bloc<UsersEvents, UsersState> {

  UsersRepository usersRepository = UsersRepository();

  UsersBloc() : super(null);

  @override
  Stream<UsersState> mapEventToState(UsersEvents event) async* {

      

    if (event is FetchUsers) {

      yield* fetchUsersToState(state);
    }
  }

  Stream<UsersState> fetchUsersToState(UsersState state) async* {
    
    yield UsersLoading();

    ApiResponse<User> response = await usersRepository.fetchUsers();

    if (response.requestStatus == RequestStatus.server_error) {
      yield UsersFailure();
     
    }

    if (response.requestStatus == RequestStatus.success) {
   
      yield UsersSuccess(
          name: response.data.name,
          bio: response.data.bio,
          email: response.data.email, 
      );
    }


  }
}


