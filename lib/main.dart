import 'package:flutter/material.dart';
import 'package:widgets_app/pages/home.dart';
import 'package:widgets_app/pages/buttons.dart';
import 'package:widgets_app/pages/cards.dart';
import 'package:widgets_app/pages/alerts.dart';
import 'package:widgets_app/pages/snackbars.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override

  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          foregroundColor: Colors.white,
          backgroundColor: Colors.pinkAccent,
          elevation: 5,
        )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
        '/buttons': (context) => const Buttons(),
        '/cards': (context) => const Cards(),
        '/alerts': (context) => const AlertPage(),
        '/snack': (context) => const SnackPage(),
      },
    );
  }
}
