import 'package:flutter/material.dart';
import 'package:flutter_project_tpm2/fajar.dart';
import 'package:flutter_project_tpm2/iqbal.dart';

class Anggota extends StatelessWidget {
  const Anggota({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stopwatch"),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(25),
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return const Fajar(); }));
                },
                splashColor: Colors.black,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.person_pin,size: 70,color: Colors.green,),
                      Text('Fajar',style: TextStyle(fontSize: 17.0),),
                    ],
                  ),
                ),
              ),
            ),

            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return const Iqbal(); }));
                },
                splashColor: Colors.black,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.person_pin,size: 70,color: Colors.green,),
                      Text('Iqbal',style: TextStyle(fontSize: 17.0),),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}