import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Sans-Serif'),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/account': (context) => const AccountPage(),
      },
    );
  }
}
