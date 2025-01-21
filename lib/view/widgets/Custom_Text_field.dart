import 'package:flutter/material.dart';

///Création d'un Widget pour la gestion des champs de connexion et de d'inscription

class CustomTextField extends StatelessWidget {
  ///Variable Contenant le nom du champs
  final String labelText;
  ///Variable de controle de texte
  final TextEditingController controller;
  ///Variable de mot de passe pour soit afficher ou nom le text lorsqu'il sagit d'un mot de passe
  final bool isPassword; // Indique si le champ est un MDP

  ///Constructeur du Widget créé
  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.controller,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword, // Cache le texte si c'est un MDP
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Veuillez entrer $labelText';
        }
        return null;
      },
    );
  }
}
