import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: ListView(children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                // Navigator.push((context), MaterialPageRoute(builder: (context)=>SearchHome()));
              },
              child: Container(
                width: 350,
                height: 50,
                child: TextField(
                  enabled: false,
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
                    suffixIcon: IconButton(onPressed: (){},
                        icon: Icon(Icons.arrow_forward)),
                    hintText: "Search for city,location or hotel",
                  ),
                ),
              ),
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
                  "Handpicked for you",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                // Navigator.push((context), MaterialPageRoute(builder: (context)=>Locations()));
              },
              child: Container(
                  height: 220,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                height: 150,
                                width: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.telegraph.co.uk%2Fcontent%2Fdam%2Ftravel%2FSpark%2Fvisit-malta%2Fpalazzo-consiglia-boutique-hotel-xlarge.jpg&f=1&nofb=1&ipt=d0f0f8dc1cb201dd111443384906296c0dff01cc24e37a5baff4b7ea7b3ebe77&ipo=images",),fit: BoxFit.fill),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 90),
                              child: Row(
                                children: [
                                  Icon(Icons.star,color: Colors.red,size: 15,),
                                  Text("  3.9",),SizedBox(height: 5,),
                                  Text("   (292)",style: TextStyle(color:Colors.grey),)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                height: 50,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("OYO Townhouse 149 Siri "),
                                    Text("India,Bangalore"),
                                    Text("\$1596"),
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      },
                      separatorBuilder: (ctx, index) {
                        return SizedBox(
                          width: 1,
                        );
                      },
                      itemCount: 10)),
            ),
            SizedBox(height: 30,),
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
            GestureDetector(
              onTap: (){
                // Navigator.push((context), MaterialPageRoute(builder: (context)=>Locations()));
              },
              child: Container(
                height: 230,
                width: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    image: DecorationImage(image: AssetImage("asset/photo_6188460653178630864_y.jpg"),fit: BoxFit.fill)
                ),
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
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Play & win with OYO",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Container(
              height: 230,
              width: 360,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  image: DecorationImage(image: AssetImage("asset/photo_6188460653178630863_y.jpg"),fit: BoxFit.fill)
              ),
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
                  "Explore curated collections",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                // Navigator.push((context), MaterialPageRoute(builder: (context)=>Heritage()));
              },
              child: Container(
                  height: 200,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                height: 150,
                                width: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.hillschurch.online%2Fwp-content%2Fuploads%2F2020%2F08%2Fjonah-768x456.jpeg&f=1&nofb=1&ipt=4abef9a2df257942766228a9bc7ed501fa2d79d708b49ffdf91b87b1bd0eb7fd&ipo=images",),fit: BoxFit.fill),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                              ),
                            )
                          ],
                        );
                      },
                      separatorBuilder: (ctx, index) {
                        return SizedBox(
                          width: 1,
                        );
                      },
                      itemCount: 10)),
            ),
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Your kinda stay",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                // Navigator.push((context), MaterialPageRoute(builder: (context)=>Locations()));
              },
              child: Container(
                  height: 220,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                height: 150,
                                width: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.fhAHJKhxHIA27A_SF-z_9wHaE8%26pid%3DApi&f=1&ipt=d260351c94d3e1056526f1d64a50f46ced28ed3334f7a7e8a55cf4cd4924e9a1&ipo=images",),fit: BoxFit.fill),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50,top: 10),
                              child: Text("Couple friendly stays",style: TextStyle(fontWeight: FontWeight.bold),),
                            )
                          ],
                        );
                      },
                      separatorBuilder: (ctx, index) {
                        return SizedBox(
                          width: 1,
                        );
                      },
                      itemCount: 10)),
            ),
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Pick your favourite OYO",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                // Navigator.push((context), MaterialPageRoute(builder: (context)=>Locations()));
              },
              child: Container(
                  height: 220,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                height: 150,
                                width: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.telegraph.co.uk%2Fcontent%2Fdam%2Ftravel%2FSpark%2Fvisit-malta%2Fpalazzo-consiglia-boutique-hotel-xlarge.jpg&f=1&nofb=1&ipt=d0f0f8dc1cb201dd111443384906296c0dff01cc24e37a5baff4b7ea7b3ebe77&ipo=images",),fit: BoxFit.fill),
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 50,top: 10),
                                  child: Text("Couple friendly stays",style: TextStyle(fontWeight: FontWeight.bold)),
                                ),SizedBox(height: 5,),
                                Text("Chic stays at affordable rates",style: TextStyle(color: Colors.grey),)
                              ],
                            )
                          ],
                        );
                      },
                      separatorBuilder: (ctx, index) {
                        return SizedBox(
                          width: 1,
                        );
                      },
                      itemCount: 10)),
            ),
            Container(
              height: 35,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Be an OYO Wizard",
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
                  image: DecorationImage(image: AssetImage("asset/photo_6188460653178630636_y.jpg"),fit: BoxFit.fill)
              ),
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
                  "Your wallets",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),

            Container(
                height: 200,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("asset/photo_6188460653178630865_x.jpg",),fit: BoxFit.fill),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                            ),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (ctx, index) {
                      return SizedBox(
                        width: 1,
                      );
                    },
                    itemCount: 2)),
          ],
        ),
      ],
      ),
    );
  }
}
