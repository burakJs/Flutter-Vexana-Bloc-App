import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:vexana/vexana.dart';

class NetworkConstant {
  static NetworkConstant? _instance;
  static NetworkConstant get instance => _instance ??= NetworkConstant._init();
  NetworkConstant._init() {
    networkManager = NetworkManager(
      options: BaseOptions(baseUrl: 'https://reqres.in/api'),
    );
    networkManager.dioIntercaptors.add(PrettyDioLogger());
  }

  late INetworkManager networkManager;
}
