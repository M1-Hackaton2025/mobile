import 'package:flutter/material.dart';
import 'package:smarteco/view/widgets/widget_tri.dart';

///Page fournissant les informations du produit scanné en prennant en compte le codebare du produit

class Scan_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Color(0xFF2D5FCB),
        elevation: 0,
        title: Image.asset('lib/assets/logo_w.png', height: 40, width: 40,),
        centerTitle: true,
      ),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Column(
        //crossAxisAlignment: ,
        children: [
          SizedBox(height: 36),
          Image.asset("lib/assets/nutella.png"),
          Text("Product 1"),
          Text("Code Barre : 3 123456 123456"),
          Widget_tri(imagePath: "lib/assets/25.png", corb: "corb"),
          SizedBox(
            width: 200,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                // Action du bouton ici
              },
              child: Text('Je tri dès maintenant', style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                backgroundColor: Color(0xFF2D5FCB),
                padding: EdgeInsets.zero,
              ),
            ),),
        ],
      ),
      ),
      );
  }
}