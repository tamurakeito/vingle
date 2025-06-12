import 'package:flutter/material.dart';
import 'app.dart';
import 'app_config.dart';

void main() {
  AppConfig.setEnvironment(Environment.prod);
  runApp(const MyApp());
}
