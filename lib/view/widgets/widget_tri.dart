import 'package:flutter/material.dart';

///Création d'un Widget pour l'affichage du tri a faire sur le produit scanner

class Widget_tri extends StatelessWidget {
  ///Variable représentant le chemin vers l'image correspondant au tri à faire
  final String imagePath;
  ///Variable correspondant au texte à affiché par rapport à l'image
  final String corb;

  const Widget_tri ({Key? key, required this.imagePath, required this.corb}): super (key: key);
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
          child: Image.asset(
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
              '$corb', // Texte principal
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 15,)
      ],
    );
  }

}