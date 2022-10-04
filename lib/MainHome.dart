import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text(
            "OYO",
            style: GoogleFonts.luckiestGuy(
                fontWeight: FontWeight.bold, fontSize: 35, color: Colors.red),
          ),
        ),
        leading: IconButton(
            onPressed: () => _scaffoldKey.currentState!.openDrawer(),
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
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
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 90,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          CircleAvatar(
                            radius: 33,
                            backgroundImage: NetworkImage(
                                "https://www.mckinsey.com/~/media/mckinsey/locations/europe%20and%20middle%20east/middle%20east/knowledge%20hub/dubai_thumb_1536x1536.jpg"),
                          ),
                          Text("place")
                        ],
                      );
                    },
                    separatorBuilder: (ctx, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                    itemCount: 10)),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Book your 1st OYO",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Container(
              height: 230,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  image: DecorationImage(image: NetworkImage("https://www.businessinsider.in/photo/68664363/heres-why-hotel-room-rates-in-india-may-double-in-the-next-3-to-4-years.jpg?imgsize=225157"),fit: BoxFit.fill)
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: 360,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Center(child: Text("View all offers",style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Play & win with OYO",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Container(
              height: 230,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  image: DecorationImage(image: NetworkImage("https://www.businessinsider.in/photo/68664363/heres-why-hotel-room-rates-in-india-may-double-in-the-next-3-to-4-years.jpg?imgsize=225157"),fit: BoxFit.fill)
              ),
            ),
          ],
        ),
      ],
      ),
    );
  }
}
