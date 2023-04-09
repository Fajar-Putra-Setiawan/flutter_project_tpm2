import 'package:flutter/material.dart';

class PetunjukLogin extends StatefulWidget {
  const PetunjukLogin({Key? key}) : super(key: key);

  @override
  _PetunjukLoginState createState() => _PetunjukLoginState();
}

class _PetunjukLoginState extends State<PetunjukLogin> {

  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Masuk aplikasi.",},
    {"id": 2, "name": "Isikan username yang sesuai dengan aplikasi yaitu user",},
    {"id": 3, "name": "Isikan password yang sesuai dengan aplikasi yaitu user123",},
    {"id": 4, "name": "Pastikan tidak salah dalam inputan.",},
    {"id": 5, "name": "Tekan tombol login.",},
    {"id": 6, "name": "Jika benar, maka akan masuk pada halaman utama aplikasi yang berisikan menu.",},
    {"id": 7, "name": "Jika gagal, user diharuskan untuk kembali pada halaman login untuk mengisi kembali username dan password dengan benar.",},
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