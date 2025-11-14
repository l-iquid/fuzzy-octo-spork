import 'package:finalproject/pages/main_page.dart';
import 'package:finalproject/pages/signin_page.dart';
import 'package:finalproject/pages/terms_of_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final routerConfig = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'signin',
      builder: (context, state) => const SignInPage(),
    ),
    GoRoute(
      path: '/terms',
      name: 'terms',
      builder: (context, state) => const TermsOfService(),
    ),
    GoRoute(
      path: '/main',
      name: 'main',
      builder: (context, state) => const MainPage(),
    )
  ]
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData.from(colorScheme: ColorScheme.dark(
        primary: Colors.red,
        outline: Colors.redAccent,
        surface: Color.fromRGBO(28, 28, 28, 1)
      )),

      routerConfig: routerConfig,
    );
  }
}