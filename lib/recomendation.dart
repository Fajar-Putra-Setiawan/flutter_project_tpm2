import 'package:flutter/material.dart';
import 'package:flutter_project_tpm2/detail.dart';
import 'tourism_place.dart';


class Recomendation extends StatelessWidget {
  const Recomendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tourism Place"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      
      body: GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        
        itemCount: tourismPlaceList.length,
        itemBuilder: (BuildContext context, int index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return HalamanDetail(place:place);
              }));
            },

            child: Card(
              elevation: 10, 
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                width: 30,
                padding: const EdgeInsets.all(12),

                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                          width: 300,
                          height: 100,
                          child: Image.network(place.imageUrls[0])),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    //biar bertingkat diberi column
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          place.name,
                          style: TextStyle(
                            fontSize: 20, fontStyle: FontStyle.italic),
                            maxLines: 2,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}