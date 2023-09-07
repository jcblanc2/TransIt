import 'package:flutter/material.dart';
import 'package:trans_it/components/auth_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Create email and password controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFf5f5f5),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // login text
                    const Text(
                      'Log In',
                      style: TextStyle(
                          color: Color(0xFF333333),
                          fontFamily: 'inter',
                          fontSize: 44,
                          fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(
                      height: 50,
                    ),

                    // email TextField
                    AuthTextField(
                        controller: emailController,
                        hint: 'Email',
                        obscureText: false),

                    const SizedBox(
                      height: 10,
                    ),

                    // password TextField
                    AuthTextField(
                        controller: passwordController,
                        hint: 'Password',
                        obscureText: true),

                    // forgot password text
                    const Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Color(0xFF1E3A8A),
                          fontFamily: 'inter',
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.right,
                    ),

                    // button login
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
