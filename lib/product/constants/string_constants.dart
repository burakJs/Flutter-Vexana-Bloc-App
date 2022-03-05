class StringConstants {
  static StringConstants? _instance;
  static StringConstants get instance => _instance ??= StringConstants._init();
  StringConstants._init();

  final String appBarTitle = 'User List';
}
