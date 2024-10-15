import 'package:chat_app/src/features/authentication/presentation/pages/login_page.dart';
import 'package:chat_app/src/features/conversations/presentation/pages/conversation_page.dart';
import 'package:chat_app/src/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final _router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(path: '/login', builder: (context, state) => LoginPage()),
    GoRoute(path: '/conversations', builder: (context, state) => Conversation())
  ]
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp.router(
       debugShowCheckedModeBanner: false,
       themeMode: ThemeMode.light,
       theme: lightTheme,
       routerConfig: _router,
     );
  }

}

