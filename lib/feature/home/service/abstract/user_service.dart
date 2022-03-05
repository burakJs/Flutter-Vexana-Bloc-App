import 'package:vexana/vexana.dart';

import '../../model/response_model.dart';

abstract class IUserService {
  INetworkManager manager;
  IUserService(this.manager);

  Future<UserResponseModel?> getAllUsers();
}
