import 'package:flutter/material.dart';
import 'widget/info_widget.dart'; // Importez votre widget InfoWidget

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Projets du portfolio :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            InfoWidget(
              title: 'Projet A',
              content: 'Application de gestion de tâches',
            ),
            InfoWidget(
              title: 'Projet B',
              content: 'Application de suivi des dépenses',
            ),
            InfoWidget(
              title: 'Projet C',
              content: 'Application de réservation de restaurants',
            ),
            SizedBox(height: 20),
            Text(
              'Technologies utilisées :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            InfoWidget(
              title: 'Flutter',
              content: 'Développement mobile multiplateforme',
            ),
            InfoWidget(
              title: 'Firebase',
              content: 'Base de données et authentification',
            ),
            InfoWidget(
              title: 'Provider',
              content: 'Gestion de l\'état de l\'application',
            ),
          ],
        ),
      ),
    );
  }
}
