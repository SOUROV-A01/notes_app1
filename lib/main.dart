import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notes_app1/presentation/AddNotePage.dart';
import 'package:notes_app1/presentation/HomePage.dart';
import 'package:notes_app1/presentation/LoginPage.dart';
import 'package:notes_app1/presentation/RegistrationPage.dart';
import 'package:notes_app1/presentation/SplashScreen.dart';


void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        routes: [
          GoRoute(path: '/', builder: (context, state) => SplashScreen()),
          GoRoute(path: '/login', builder: (context, state) => LoginPage()),
          GoRoute(path: '/register', builder: (context, state) => RegistrationPage()),
          GoRoute(path: '/home', builder: (context, state) => HomePage()),
          GoRoute(path: '/add_note', builder: (context, state) => AddNotePage()),
        ],
      ),
    );
  }
}
