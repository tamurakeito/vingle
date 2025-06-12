import 'package:flutter/material.dart';
import 'app_router.dart';
import 'app_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: AppConfig.title,
      debugShowCheckedModeBanner: false,
    );
  }
}
