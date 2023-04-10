import 'package:flutter/material.dart';
import 'package:flutter_project_tpm2/anggota.dart';
import 'package:flutter_project_tpm2/favorite.dart';
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
        title: const Text("Welcome, User",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.orange,
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
                        color: Colors.orange,

                        ),
                        child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(          
                            children: <Widget>[
                            Icon(Icons.people,
                            size: 80,
                            color: Colors.black,
                            ),
                            Text('Anggota', style: TextStyle(color: Colors.black),)
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
                    color: Colors.orange,

                    ),
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: <Widget>[
                        Icon(Icons.timer,
                        size: 80,
                        color: Colors.black,
                        ),
                        Text('Stopwatch',style: TextStyle(color: Colors.black))
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
                    color: Colors.orange,

                    ),
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: <Widget>[
                        Icon(Icons.place_outlined,
                        size: 80,
                        color: Colors.black,
                        ),
                        Text('Situs Rekomendasi',style: TextStyle(color: Colors.black),)
                        ],
                      ),
                      ),
                    ),
                     onTap: () {
                      Route route = MaterialPageRoute(builder: (context) => Recomendation());
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
                    color: Colors.orange,

                    ),
                    child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: <Widget>[
                        Icon(Icons.favorite,
                        size: 80,
                        color: Colors.black,
                        ),
                        Text('Favorite',style: TextStyle(color: Colors.black),)
                        ],
                      ),
                      ),
                    ),
                     onTap: () {
                      Route route = MaterialPageRoute(builder: (context) => FavoritePage());
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