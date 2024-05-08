import 'package:flutter/material.dart';
import 'package:mon_portfolio/screens/widget/card_exp.dart';

class ExperiencesProfessionnellesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: double.infinity,
      width: double.infinity,
      color: Theme.of(context).colorScheme.background,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.deepPurpleAccent, // Couleur de la ligne
            padding: EdgeInsets.symmetric(vertical: 20),
            child: const Row(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                Text(
                  'Expériences',
                  style: TextStyle(
                    fontSize: 24,

                    color: Colors.white,

                    // Couleur du texte
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Theme.of(context).canvasColor,
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.all(10),
              itemBuilder: (BuildContext ctx, int index) {
                if (index == 0) {
                  return CardExp(
                    companyName: "STE  PICOLO| Sfax,Tunisie",
                    date: "2019-2020",
                    jobTitle: "Assistante de gestion",
                    skills: [
                      "Intégration des données du magasin dans l’ERP "
                      "Gestion du contenu sur les réseaux sociaux",
                    ],
                  );
                } else if (index == 1) {
                  return CardExp(
                    companyName: "STE PERFAXIS | Sfax,Tunisie ",
                    date: "Aout. 2022 - 1mois ",
                    jobTitle: "Stagiaire",
                    skills: [
                      "Acquisition des principes fondamentale en business intelligence",

                    ],
                  );
                } else {
                  return CardExp(
                    companyName: "STE PERFAXIS | Sfax,Tunisie",
                    date: " Aout. 2023 - 1mois ",
                    jobTitle: "Stagiaire",
                    skills: [
                      "Réalisation d’une application web de gestion de stock ",

                    ],
                  );
                }
              },
              separatorBuilder: (BuildContext ctx, int index) {
                return SizedBox(height: 15);
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
