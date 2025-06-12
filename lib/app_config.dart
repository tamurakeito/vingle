enum Environment { dev, prod }

class AppConfig {
  static late Environment _environment;
  static late String _apiUrl;
  static late String _title;
  static late String _welcomeText;

  // 環境をセットする
  static void setEnvironment(Environment env) {
    _environment = env;
    switch (env) {
      case Environment.dev:
        _apiUrl = 'https://dev-api.example.com';
        _title = 'vingle dev';
        _welcomeText = 'vingle dev';
        break;
      case Environment.prod:
        _apiUrl = 'https://api.example.com';
        _title = 'vingle prod';
        _welcomeText = 'vingle prod';
        break;
    }
  }

  // 設定値を取得するゲッター
  static String get apiUrl => _apiUrl;
  static Environment get environment => _environment;
  static String get title => _title;
  static String get welcomeText => _welcomeText;
}
