import 'package:finalproject/pages/bank_page.dart';
import 'package:finalproject/pages/main_page.dart';
import 'package:finalproject/pages/settings_page.dart';
import 'package:finalproject/pages/signin_page.dart';
import 'package:finalproject/pages/terms_of_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:flutter_acrylic/window.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
    ),
    GoRoute(
      path: '/bank',
      name: 'bank',
      builder: (context, state) => const BankPage(),
    ),
    GoRoute(
      path: '/settings',
      name: 'settings',
      builder: (context, state) => const SettingsPage(),
    ),
  ]
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData.from(textTheme: GoogleFonts.aBeeZeeTextTheme(), colorScheme: ColorScheme.highContrastLight(
        primary: Colors.red,
        outline: Colors.redAccent,
      )),

      routerConfig: routerConfig,
    );
  }
}