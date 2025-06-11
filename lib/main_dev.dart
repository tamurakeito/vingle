import 'package:flutter/material.dart';
import 'app.dart'; // 共通のUIウィジェット
import 'config.dart'; // 環境設定を読み込むクラス

void main() {
  // 開発環境用の設定をセット
  AppConfig.setEnvironment(Environment.dev);
  runApp(const MyApp());
}
