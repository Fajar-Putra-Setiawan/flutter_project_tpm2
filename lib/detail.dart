import 'tourism_place.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class HalamanDetail extends StatefulWidget {
  final TourismPlace place;
  const HalamanDetail({ Key? key, required this.place}) : super(key: key);
  
  @override
  _HalamanDetailState createState() => _HalamanDetailState();
}


class _HalamanDetailState extends State<HalamanDetail> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text("${widget.place.name}"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: (isFavorite)
                ? Icon(Icons.favorite,color: Colors.red,)
                : Icon(Icons.favorite_border),
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                    Image.network("${widget.place.imageUrls[0]}", height: 120,),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textBesar(widget.place.name),
                SizedBox(
                  height: 100.0,
                  width: 500.0,
                  child: Divider(
                    color: Colors.black
                  ),
                ),
                textSedang("Deskripsi Singkat : "),
                textKecil(widget.place.description),
                SizedBox(height: 10,),
                textSedang("Open Time : "),
                textKecil(widget.place.openDays),
              ],
            ),
          )
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () => launch('${widget.place.linkurl}'),
        child: Icon(Icons.search),
      ),
    );
  }

////////////////////////////////////////////////////////////
  Widget textBesar(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 40,fontFamily: 'Pacifico'),
    );
  }

  Widget textKecil(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 17,fontFamily: 'Source Sans Pro'),
    );
  }

  Widget textSedang(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 22),
    );
  }

  
}

