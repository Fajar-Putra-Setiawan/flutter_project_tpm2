import 'package:flutter/material.dart';
import 'package:flutter_project_tpm2/fajar.dart';
import 'package:flutter_project_tpm2/iqbal.dart';
import 'package:flutter_project_tpm2/login.dart';
import 'package:flutter_project_tpm2/petunjuk.dart';

class Help extends StatelessWidget {
  const Help({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Help"),
          backgroundColor: Colors.orange,
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(25),
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(8),
              child: InkWell(
                onTap: (){
                  Route route = MaterialPageRoute(builder: (context) => const Petunjuk());
                  Navigator.push(context, route);
                },
                splashColor: Colors.black,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.announcement,size: 70,color: Colors.green,),
                      Text('Petunjuk',style: TextStyle(fontSize: 17.0),),
                    ],
                  ),
                ),
              ),
            ),

            Card(
              margin: const EdgeInsets.all(8),
              color: Colors.red,
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) { return const LoginPage(); }));
                },
                splashColor: Colors.black,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(Icons.logout,size: 70,color: Colors.grey,),
                      Text('Logout',style: TextStyle(fontSize: 17.0),),
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