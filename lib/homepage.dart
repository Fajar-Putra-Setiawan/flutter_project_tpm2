import 'package:flutter/material.dart';
import 'package:flutter_project_tpm2/dashboard.dart';
import 'package:flutter_project_tpm2/help.dart';
import 'package:flutter_project_tpm2/login.dart';


class HalamanUtama extends StatefulWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  int currentIndex = 0;
  final screens = [
    MenuPage(),
    Help(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: screens[currentIndex],

    
    bottomNavigationBar : BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => setState(() => currentIndex = index),
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items:[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          label: 'Help',
        ),
      ],
    ),
      

    );
  }

}


