import 'package:flutter/material.dart';
import 'SignUpScreen.dart';
import 'HomeScreen.dart';
import 'login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Add `const` here

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Konchue',
      debugShowCheckedModeBanner: false, // This removes the debug banner
      initialRoute: '/login',
      routes: {
        '/login': (context) => Login_screen(),
        '/register': (context) => SignupScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
