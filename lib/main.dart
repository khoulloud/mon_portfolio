import 'package:flutter/material.dart';
import 'package:mon_portfolio/screens/bottom_navbar.dart';
import 'package:mon_portfolio/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void toggleTheme(bool isDark) {
    setState(() {
      _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profilio',
      home: SplashScreen(toggleTheme: toggleTheme), // Définir SplashScreen comme écran d'accueil par défaut
      routes: {
        // Ajoutez vos autres routes ici si nécessaire
      },
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      debugShowCheckedModeBanner: false,
    );
  }
}
