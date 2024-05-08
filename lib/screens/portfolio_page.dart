import 'package:flutter/material.dart';
import 'package:mon_portfolio/screens/widget/card_porfolio_widget.dart';

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
        centerTitle: true, // Centrer le titre
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink.shade300, Colors.pink.shade700],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20), // Ajout d'un espace supplémentaire
              Text(
                'Projets du portfolio :',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Container( // Ajouter des containers pour styliser les projets
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PortfolioWidget(
                      title: 'Application web de gestion du stock',
                      content: 'Asp.net',
                      icon: Icons.web,
                    ),
                    PortfolioWidget(
                      title: 'Application gestion des employées',
                      content: 'Angular',
                      icon: Icons.web,
                    ),
                    PortfolioWidget(
                      title: 'Application web de gestion des consultations',
                      content: 'Laravel & VueJs',
                      icon: Icons.web,
                    ),
                    PortfolioWidget(
                      title: 'E-commerce (site vente de bijoux)',
                      content: 'PHP',
                      icon: Icons.web,
                    ),
                    PortfolioWidget(
                      title: 'Application mobile portfolio',
                      content: 'Flutter',
                      icon: Icons.phone_android,
                    ),
                    PortfolioWidget(
                      title: 'Mini projet (conception maison intelligente)',
                      content: 'Arduino & C',
                      icon: Icons.devices,
                    ),
                    PortfolioWidget(
                      title: 'Projet fin d\'année (Prédiction du Cancer Colorectal)',
                      content: 'Machine & Deep Learning avec Segmentation d\'Images',
                      icon: Icons.analytics,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Technologies utilisées :',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Container( // Ajouter des containers pour styliser les technologies utilisées
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PortfolioWidget(
                      title: 'Flutter',
                      content: 'Développement mobile multiplateforme',
                      icon: Icons.phone_android,
                    ),
                    PortfolioWidget(
                      title: 'Firebase',
                      content: 'Base de données et authentification',
                      icon: Icons.data_usage,
                    ),
                    PortfolioWidget(
                      title: 'Provider',
                      content: 'Gestion de l\'état de l\'application',
                      icon: Icons.developer_board,
                    ),
                    // Ajouter d'autres technologies ici
                    PortfolioWidget(
                      title: 'Django',
                      content: 'Framework Python pour le développement web',
                      icon: Icons.web,
                    ),
                    PortfolioWidget(
                      title: 'React Native',
                      content: 'Développement mobile multiplateforme avec JavaScript',
                      icon: Icons.phone_android,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
