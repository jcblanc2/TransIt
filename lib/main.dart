import 'package:flutter/material.dart';
import 'package:trans_it/utils/constants.dart';
import 'pages/auth/login_page.dart';
import 'pages/auth/registe_details.dart';
import 'pages/auth/register.dart';
import 'pages/splash_screen.dart';

void main() {
  runApp(const TransIt());
}

class TransIt extends StatelessWidget {
  const TransIt({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Constants.initialRoute,
      routes: {
        Constants.initialRoute: (context) => const SplashScreen(),
        Constants.loginRoute: (context) => const LoginPage(),
        Constants.registerRoute: (context) => const RegisterPage(),
        Constants.registerDetailsRoute: (context) => const RegisteDetailsPage(),
      },
    );
  }
}
