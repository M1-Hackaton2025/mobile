# smarteco

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Architecture modèl MVVM


/// Voici la structure du projet :
///
/// ```plaintext
/// /lib
/// ├── main.dart                // Point d'entrée principal de l'application.
/// ├── models/                  // Contient les classes de données (User, Product, etc.).
/// │   └── user.dart
/// ├── view/                    // Contient les widgets et écrans de l'application.
/// │   ├── screens/
/// │   │   ├── signup_screen.dart
/// │   │   └── login_screen.dart
/// │   └── widgets/
/// │       └── custom_text_field.dart
/// ├── viewmodels/              // Contient les modèles de vue (utilisés par Provider).
/// │   └── signup_viewmodel.dart
/// └── assets/                  // Contient les ressources comme les images et les fichiers statiques.
///     └── logo.png
/// ```