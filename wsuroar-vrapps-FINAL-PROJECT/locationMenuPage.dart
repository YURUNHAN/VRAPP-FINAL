import 'package:flutter/material.dart';
import 'package:flutter_application_1/picture_page.dart';
class Location {
  const Location({required this.name});

  final String name;
}
class destinations extends StatefulWidget {

  @override
  State<destinations> createState() => _destinationsState();
}

class _destinationsState extends State<destinations> {

  List<Location> locations =
  [
    const Location(name: "CLEVELAND HALL"),
    const Location(name: "CUB"),
    const Location(name: "CUE"),
    //const Location(name: "SPARK"),
    //const Location(name: "CHINOOK APARTMENTS"),
    //const Location(name: "MCEACHERN HALL"),
    const Location(name: "SOUTHSIDE DINING HALL"),
    //const Location(name: "STUDENT REC CENTER"),
    //const Location(name: "CHINOOK"),
  ];
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Destinations'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MapPage(streetName: locations[index].name)));
                },
                title: Text(locations[index].name),
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text(locations[index].name[0]),
                ),
              ),
            );
          },
        )

    );
  }
}
