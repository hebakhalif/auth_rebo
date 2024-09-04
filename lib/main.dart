import 'package:flutter/material.dart';
import 'package:login/views/login_register.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,

       home: LoginRegister(),
    );
  }
}
