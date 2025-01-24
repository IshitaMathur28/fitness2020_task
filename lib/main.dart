import 'package:flutter/material.dart';
import 'password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Password Protected WebView',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PasswordScreen(),
    );
  }
}
