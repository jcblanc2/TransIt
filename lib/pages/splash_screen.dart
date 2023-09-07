import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../services/auth/auth_gate.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Container(
          child: Lottie.network(
              "https://lottie.host/60ffa09a-be09-44ea-9520-de14d579a1a8/AYEBUGy9vB.json"),
        ),
        nextScreen: const AuthGate(),
        backgroundColor: const Color(0xFFf5f5f5),
        splashIconSize: 250,
        duration: 4000,
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.rightToLeft,
      ),
    );
  }
}
