import 'package:flutter/material.dart';
import 'app.dart';
import 'config.dart';

void main() {
  AppConfig.setEnvironment(Environment.prod);
  runApp(const MyApp());
}
