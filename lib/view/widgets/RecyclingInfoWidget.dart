import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///Création d'un Widget pour afficher les statistiques de la semaine de l'utilisateur

class RecyclingInfoWidget extends StatelessWidget {
  ///variable pour le chemin vers l'image
  final String imagePath;
  ///variable du nombre de déchet recyclé
  final int count;
  ///variable de la moyenne de déchet
  final int average;

  ///Constructeur du Widget créé
  const RecyclingInfoWidget({
    Key? key,
    required this.imagePath,
    required this.count,
    required this.average,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image personnalisée
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white, // Fond blanc autour de l'image
            borderRadius: BorderRadius.circular(12.0), // Bordures arrondies
          ),
          child: SvgPicture.asset(
            imagePath,
            width: 42.0, // Largeur de l'image
            height: 42.0, // Hauteur de l'image
          ),
        ),
        const SizedBox(width: 16.0),
        // Texte et chiffres
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$count déchets recyclés', // Texte principal
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'contre $average en moyenne', // Texte secondaire
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey, // Couleur gris clair
              ),
            ),
          ],
        ),
      ],
    );
  }
}
