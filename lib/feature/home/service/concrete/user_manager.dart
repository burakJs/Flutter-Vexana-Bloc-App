import 'package:bloc_training/feature/home/model/response_model.dart';
import 'package:bloc_training/feature/home/service/abstract/user_service.dart';
import 'package:vexana/vexana.dart';

class UserManager extends IUserService {
  UserManager(INetworkManager manager) : super(manager);

  @override
  Future<UserResponseModel?> getAllUsers() async {
    final response = await manager.send<UserResponseModel, UserResponseModel>(
      '/users?page=2',
      parseModel: UserResponseModel(),
      method: RequestType.GET,
    );
    print(response);
    return response.data;
  }
}
