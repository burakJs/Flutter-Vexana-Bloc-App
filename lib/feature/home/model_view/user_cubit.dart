import 'package:bloc/bloc.dart';
import 'package:bloc_training/feature/home/model_view/user_state.dart';
import 'package:bloc_training/feature/home/service/abstract/user_service.dart';
import 'package:bloc_training/feature/home/service/concrete/user_manager.dart';
import 'package:bloc_training/product/constants/network_constant.dart';

class UserCubit extends Cubit<UserState> {
  final IUserService _service;

  UserCubit({IUserService? service})
      : _service = service ?? UserManager(NetworkConstant.instance.networkManager),
        super(UserInitial());

  Future<void> getAllUsers() async {
    emit(UserLoading());
    final response = await _service.getAllUsers();

    if (response == null) {
      emit(UserError('Null data'));
    } else {
      emit(UserSuccess(response));
    }
  }
}
