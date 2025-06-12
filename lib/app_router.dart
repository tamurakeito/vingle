import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app_config.dart';

// GoRouterの設定
final router = GoRouter(
  // アプリが起動したときに最初に表示されるパス
  initialLocation: '/',

  // ルート（画面遷移のルール）の一覧
  routes: [
    // ホーム画面
    GoRoute(
      path: '/',
      builder: (context, state) => Scaffold(
        body: Center(
          child: Text(AppConfig.welcomeText),
        ),
      ),
    ),
    // 詳細画面
    GoRoute(
      path: '/details',
      builder: (context, state) => const Scaffold(
        body: Center(
          child: Text('Detail'),
        ),
      ),
    ),
    // ユーザープロフィール画面（:userId の部分が可変のパラメータになる）
    GoRoute(
      path: '/users/:userId',
      builder: (context, state) {
        // URLから 'userId' パラメータを取得
        final userId = state.pathParameters['userId']!;
        return Scaffold(
          body: Center(
            child: Text('UserProfile: $userId'),
          ),
        );
      },
    ),
  ],

  // ルートが見つからなかった場合に表示する画面
  errorBuilder: (context, state) => const Scaffold(
    body: Center(
      child: Text('Error'),
    ),
  ),
);
