import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hercules_tracker/features/user_auth/presentation/pages/home_page.dart';
import 'package:hercules_tracker/features/user_auth/presentation/pages/login_page.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Cuenta",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
            Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=> LoginPage()), (route) => false);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,
            onPrimary: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          child: Text(
            'Cerrar sesión',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=> HomePage()), (route) => false);
              },
              icon: Icon(Icons.home, color: Colors.white, size: 40),
            ),
            IconButton(
              onPressed: () {
                // Acción cuando se presiona el ícono de nota
              },
              icon: Icon(Icons.note_alt_rounded, color: Colors.white, size: 40),
            ),
            IconButton(
              onPressed: () {
                // Acción cuando se presiona el ícono de calendario
              },
              icon: Icon(Icons.calendar_today, color: Colors.white, size: 40),
            ),
            IconButton(
              onPressed: () {
                // Acción cuando se presiona el ícono de persona
              },
              icon: Icon(Icons.person, color: Colors.white, size: 40),
            ),
          ],
        ),
      ),
    );
  }
}
