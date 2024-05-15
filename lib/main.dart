import 'package:brighton/locator.dart';
import 'package:brighton/src/screens/login_screen/login_screen.dart';
import 'package:brighton/src/screens/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}
