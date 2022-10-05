import 'package:flutter/material.dart';

class Locations extends StatefulWidget {
  const Locations({Key? key}) : super(key: key);

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 270,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  image: DecorationImage(image: AssetImage("asset/photo_6188460653178630864_y.jpg"),fit: BoxFit.fill)
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(.2),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search for city,location or hotel",
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.yellow,
                child: Row(
                  children: [
                    Icon(Icons.location_on)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
