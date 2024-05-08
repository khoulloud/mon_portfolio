import 'package:flutter/material.dart';
import 'widget/info_widget.dart'; // Importez votre widget InfoWidget

class ExperiencesProfessionnellesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expériences professionnelles'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Expériences professionnelles :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            InfoWidget(
              title: 'Poste',
              content: 'Développeur mobile senior',
            ),
            InfoWidget(
              title: 'Entreprise',
              content: 'ABC Technologies',
            ),
            InfoWidget(
              title: 'Période',
              content: 'Janvier 2020 - Présent',
            ),
            SizedBox(height: 20),
            Text(
              'Réalisations professionnelles :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            InfoWidget(
              title: 'Projet A',
              content: 'Gestion d\'une application de e-commerce',
            ),
            InfoWidget(
              title: 'Projet B',
              content: 'Développement d\'une application de livraison',
            ),
          ],
        ),
      ),
    );
  }
}
