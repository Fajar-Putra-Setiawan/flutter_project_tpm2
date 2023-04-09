import 'package:flutter/material.dart';
import 'package:flutter_project_tpm2/anggota.dart';
import 'package:flutter_project_tpm2/recomendation.dart';
import 'package:flutter_project_tpm2/stopwatch.dart';



class MenuPage extends StatelessWidget {
  final appTitle = 'HOME';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome, User"),
        backgroundColor: Colors.grey.shade700,
      ),

      body: Container(
        margin: EdgeInsets.only(top:60),
        child: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new GestureDetector(
                        child: Container(
                        height: 120,
                        width: 150,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.orange[600],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                        ),
                        child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(          
                            children: <Widget>[
                            Icon(Icons.people,
                            size: 80,
                            ),
                            Text('Anggota')
                            ],
                        ),
                          ),
                      ),
                      onTap: () {
                      Route route = MaterialPageRoute(builder: (context) => const Anggota());
                      Navigator.push(context, route);
                      },
                  ),
                  SizedBox(height: 16.0),

                  new GestureDetector(
                    child: Container(
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.orange[600],
                    boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                    ),
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: <Widget>[
                        Icon(Icons.timer,
                        size: 80,
                        ),
                        Text('Stopwatch')
                        ],
                      ),
                      ),
                    ),
                     onTap: () {
                      Route route = MaterialPageRoute(builder: (context) => StopwatchApp());
                      Navigator.push(context, route);
                      },
                  ),
                  SizedBox(height: 16.0),

                  new GestureDetector(
                    child: Container(
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.orange[600],
                    boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                    ),
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: <Widget>[
                        Icon(Icons.place_outlined,
                        size: 80,
                        ),
                        Text('Situs Rekomendasi')
                        ],
                      ),
                      ),
                    ),
                     onTap: () {
                      Route route = MaterialPageRoute(builder: (context) => Recomendation());
                      Navigator.push(context, route);
                      },
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}