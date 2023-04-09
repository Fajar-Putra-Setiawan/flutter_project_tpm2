import 'package:flutter/material.dart';
import 'package:flutter_project_tpm2/homepage.dart';
import 'package:flutter_project_tpm2/petunjukLogin.dart';
import 'package:flutter_project_tpm2/petunjukRekomendasi.dart';
import 'package:flutter_project_tpm2/petunjukStopwatch.dart';

class Petunjuk extends StatelessWidget {
  const Petunjuk({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pusat Bantuan "),
        backgroundColor: Colors.grey,
      ),

      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.login),
            title: Text("How to Login"),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return const PetunjukLogin(); }));
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text("Tata Cara Penggunaan Stopwatch"),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return const PetunjukStopwatch(); }));
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text("Tata Cara Penggunaan Menu Situs Rekomendasi"),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return const PetunjukRekomendasi(); }));
            },
          ),
        ],
      ),
    );
  }
}