abstract class UsersState {}

class UsersLoading extends UsersState {}

class UsersSuccess extends UsersState {
  String name;
  String email; 
  String bio;

  UsersSuccess({this.name, this.email, this.bio});
}

class UsersFailure extends UsersState {}

class UsersEmpty extends UsersState {}

