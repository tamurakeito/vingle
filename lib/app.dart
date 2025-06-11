import 'package:flutter/material.dart';
import 'config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(AppConfig.welcomeText),
        ),
      ),
    );
  }
}
