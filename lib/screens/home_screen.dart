import 'package:flutter/material.dart';
import 'package:mon_portfolio/screens/bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  final void Function(bool) toggleTheme;

  const HomeScreen({Key? key, required this.toggleTheme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20), // Espacement du haut
          Text('Welcome to Home Screen'), // Contenu de l'en-tête
          SizedBox(height: 20), // Espacement
          Expanded(
            child: Center(
              child: Text('Your main content here'),
            ),
          ), // Votre contenu principal
        ],
      ),
      bottomNavigationBar: BottomNavBar(toggleTheme: toggleTheme), // Passer la fonction toggleTheme à BottomNavBar
    );
  }
}
