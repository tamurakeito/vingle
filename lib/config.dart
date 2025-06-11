enum Environment { dev, prod }

class AppConfig {
  static late Environment _environment;
  static late String _apiUrl;
  static late String _welcomeText;

  // 環境をセットする
  static void setEnvironment(Environment env) {
    _environment = env;
    switch (env) {
      case Environment.dev:
        _apiUrl = 'https://dev-api.example.com';
        _welcomeText = 'Hello, World! dev';
        break;
      case Environment.prod:
        _apiUrl = 'https://api.example.com';
        _welcomeText = 'Hello, World! prod';
        break;
    }
  }

  // 設定値を取得するゲッター
  static String get apiUrl => _apiUrl;
  static Environment get environment => _environment;
  static String get welcomeText => _welcomeText;
}
