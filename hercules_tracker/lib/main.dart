import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Importa Firebase Core
import 'package:hercules_tracker/features/user_auth/presentation/pages/login_page.dart';
import 'package:hercules_tracker/features/app/splash_screen/splash_screen.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
      apiKey: "AIzaSyAgqwgOIWcaRCG7Jyn-I3CDEH92uI5ko5Q",
      appId: "1:64720394025:android:4e1ff726c08a73bf67c938",
      messagingSenderId: "64720394025",
      projectId: "hercules-tracker",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(
        child: LoginPage(),
      ),
    );
  }
}
