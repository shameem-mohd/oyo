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
              Stack(
                children:[
                  Container(
                    height: 270,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        image: DecorationImage(image: AssetImage("asset/photo_6188460653178630864_y.jpg"),fit: BoxFit.fill)
                    ),
                  ),Positioned(
                    top: 10,left: 10,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white.withOpacity(.8),
                      child: IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.close,color: Colors.black,)),

                    ),
                  )
                ]
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
              SizedBox(height: 15,),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [SizedBox(width: 10,),
                    Icon(Icons.location_on_sharp,color: Colors.blue,),
                    Text("  Search nearby OYOs with this offer",style: TextStyle(color: Colors.blue),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child:
                    Text("   269 cities offering this deal",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ),
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                child: Text("      POPULAR",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 5,),
              Container(
                height: 500,
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx,index){
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage("https://s26162.pcdn.co/wp-content/uploads/sites/3/2021/03/bangalore-feat.jpg"),
                    ),
                    title: Text("Bangalore"),
                    subtitle: Text("Karnataka",style: TextStyle(color: Colors.grey),),
                  );
                }, separatorBuilder: (ctx,index){
                  return SizedBox(height: 1,);
                }, itemCount: 10),
              ),
              SizedBox(height: 20,),
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                child: Text("      OTHER",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 5,),
              Container(
                height: 1000,
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx,index){
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage("https://img.theculturetrip.com/450x/smart/wp-content/uploads/2017/12/jctp0084-central-area-bangalore-india-moore-3.jpg"),
                    ),
                    title: Text("Haridwar"),
                    subtitle: Text("Uttarakhand",style: TextStyle(color: Colors.grey),),
                  );
                }, separatorBuilder: (ctx,index){
                  return SizedBox(height: 1,);
                }, itemCount: 15),
              ),
            ],
          )
        ],
      ),
    );
  }
}
