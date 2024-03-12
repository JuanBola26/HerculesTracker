import 'package:flutter/material.dart';
import 'package:hercules_tracker/features/app/splash_screen/splash_screen.dart';
import 'package:hercules_tracker/features/user_auth/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(
        child: LoginPage(),

      )
    );
  }
}