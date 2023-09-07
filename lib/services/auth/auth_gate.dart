import 'package:flutter/material.dart';
import 'package:trans_it/pages/auth/login_page.dart';
import 'package:trans_it/pages/auth/register_page.dart';

class AuthGate extends StatefulWidget {
  const AuthGate({super.key});

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  @override
  Widget build(BuildContext context) {
    return 'd' == 'd' ? const LoginPage() : const RegisterPage();
  }
}
