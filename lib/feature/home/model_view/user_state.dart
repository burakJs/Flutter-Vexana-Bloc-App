import 'package:bloc_training/feature/home/model/response_model.dart';

abstract class UserState {
  UserState();
}

class UserInitial extends UserState {
  UserInitial();
}

class UserLoading extends UserState {
  UserLoading();
}

class UserSuccess extends UserState {
  UserResponseModel model;
  UserSuccess(this.model);
}

class UserError extends UserState {
  String? error;
  UserError(this.error);
}
