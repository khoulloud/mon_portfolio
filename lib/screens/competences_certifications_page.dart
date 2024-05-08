import 'package:flutter/material.dart';
import 'widget/info_widget.dart'; // Importez votre widget InfoWidget

class CompetencesCertificationsPage extends StatelessWidget {
  const CompetencesCertificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.blueAccent], // Choisissez les couleurs de votre dégradé
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0, // Supprimer l'ombre de l'AppBar
            title: const Text('Compétences & certifications'),
            centerTitle: true,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        margin: EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Compétences :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            InfoWidget(
              title: 'Flutter',
              content: 'Maîtrise avancée',
            ),
            InfoWidget(
              title: 'Dart',
              content: 'Maîtrise avancée',
            ),
            InfoWidget(
              title: 'React Native',
              content: 'Maîtrise intermédiaire',
            ),
            const SizedBox(height: 20),
            const Text(
              'Certifications :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            InfoWidget(
              title: 'Certification Flutter Developer',
              content: 'Google Developers',
            ),
            InfoWidget(
              title: 'Certification Dart Programmer',
              content: 'Google Developers',
            ),
          ],
        ),
      ),
    );
  }
}
