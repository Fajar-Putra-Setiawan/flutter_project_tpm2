import 'package:flutter/material.dart';

class PetunjukRekomendasi extends StatefulWidget {
  const PetunjukRekomendasi({Key? key}) : super(key: key);

  @override
  _PetunjukRekomendasiState createState() => _PetunjukRekomendasiState();
}

class _PetunjukRekomendasiState extends State<PetunjukRekomendasi> {

  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Pilih menu situs rekomendasi pada halaman utama / home.",},
    {"id": 2, "name": "Pilih cafe mana yang ingin dilihat.",},
    {"id": 3, "name": "Setelah itu akan muncul tampilan deskripsi singkat serta jam buka coffe shop tersebut.",},
    {"id": 4, "name": "Klik pada icon search untuk membuka website dari coffeshop tersebut.",},
    {"id": 5, "name": "Klik icon love untuk menandai cafe yang di favoritkan.",},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {

    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('How to Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundUsers[index]["id"]),
                  color: Colors.blue,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Text(
                      _foundUsers[index]["id"].toString(),
                      style: const TextStyle(fontSize: 24, color:Colors.white),
                    ),
                    title: Text(_foundUsers[index]['name'], style:TextStyle(
                      color:Colors.white
                    )),
                  ),
                ),
              )
                  : const Text(
                'No results found',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}