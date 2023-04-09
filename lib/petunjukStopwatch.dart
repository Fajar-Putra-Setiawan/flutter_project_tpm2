import 'package:flutter/material.dart';

class PetunjukStopwatch extends StatefulWidget {
  const PetunjukStopwatch({Key? key}) : super(key: key);

  @override
  _PetunjukStopwatchState createState() => _PetunjukStopwatchState();
}

class _PetunjukStopwatchState extends State<PetunjukStopwatch> {

  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Pilih menu stopwatch pada halaman utama / home.",},
    {"id": 2, "name": "Klik pada tengah lingkaran untuk memulai stopwatch.",},
    {"id": 3, "name": "Jika angka telah bertambah maka fitur stopwatch telah berjalan.",},
    {"id": 4, "name": "Tekan lagi pada lingkaran untuk berhenti.",},
    {"id": 5, "name": "Tekan reset untuk setting ulang angka pada stopwatch.",},
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