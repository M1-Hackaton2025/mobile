import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smarteco/view/screens/Scan_View.dart';
import 'package:smarteco/view/screens/Welcome.dart';
import 'package:smarteco/view/screens/login.dart';
import 'package:smarteco/view/screens/signup.dart';
import 'package:smarteco/viewmodels/signup_viewmodel.dart';


///Racine du projet ou toute les pages se retrouve avec leur route correspondante

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:
    [ChangeNotifierProvider(create: (_)=> SignupViewModel())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/welcome',
        routes: {
          ///la route de la page le Login
          '/login' : (context) => LoginScreen(),
          ///la route de la page d'inscription
          '/signup' : (context) => SignupScreen(),
          ///la route de la page Home
          '/welcome' : (context) => WelcomeScreen(),
          ///La route de la page où on scanne le produit
          '/scanv' : (context) => Scan_View(),
        },
        //home: SignupScreen(),
      ),
    );
  }
}