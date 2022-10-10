import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:oyo/Bloc/oyo_bloc.dart';
import 'package:oyo/HomeScreen2.dart';
import 'package:oyo/Model/OyoModel.dart';

class SearchHome extends StatefulWidget {
  const SearchHome({Key? key}) : super(key: key);

  @override
  State<SearchHome> createState() => _SearchHomeState();
}

class _SearchHomeState extends State<SearchHome> {
@override
TextEditingController CheckinController =TextEditingController();
TextEditingController CheckoutController =TextEditingController();
  void initState() {
BlocProvider.of<OyoBloc>(context).add(getOyo("New YOrk"));
    super.initState();
  }
late OyoModel oyoModel;
String Visible="";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              width: 350,
              height: 50,
              child: TextField(
                onChanged: (value){
                  BlocProvider.of<OyoBloc>(context).add(getOyo(value));},
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
            BlocBuilder<OyoBloc, OyoState>(
  builder: (context, state) {
      if(state is OyoLoading){
            return Center(
              child: CircularProgressIndicator(),
            );
      }
      if(state is OyoError){
            return Center(
              child: Text("Something went wrong"),
            );
      }
      if (state is OyoLoaded){
        oyoModel = BlocProvider.of<OyoBloc>(context).oyoModel;
            return     Container(
              height: MediaQuery.of(context).size.height*.8,
              child: ListView(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*.9,
                    child: ListView.builder(itemBuilder: (ctx,index){
                      return Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 5,),
                                Text(oyoModel.suggestions![index].group.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                IconButton(onPressed: (){
                                  if(Visible.isNotEmpty){
                                    setState(() {
                                      Visible="";
                                    });
                                  }else{
                                    setState(() {
                                      Visible=index.toString();
                                    });
                                  }

                                },
                                    icon: Icon(Icons.arrow_circle_down_outlined))
                              ],
                            ),
                            Visibility(
                              visible: Visible ==index.toString() ,
                              child: ListView.builder(
                                itemCount: oyoModel.suggestions![index].entities!.length,
                                  shrinkWrap: true,
                                  itemBuilder: (ctx,ind){
                                return GestureDetector(
                                  onTap: (){
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              GestureDetector(
                                                onTap: (){
                                                  DatePicker.showDatePicker(context,
                                                      showTitleActions: true,
                                                      minTime: DateTime(2018, 3, 5),
                                                      maxTime: DateTime(2019, 6, 7), onConfirm: (date) {
                                                        setState(() {
                                                          CheckinController.text = date.toString().split(' ').first;
                                                        });
                                                      }, currentTime: DateTime.now(), locale: LocaleType.en);
                                                },
                                                child: TextField(
                                                  controller: CheckinController,
                                                  enabled: false,
                                                  decoration: InputDecoration(
                                                      hintText: "Checkin........",
                                                      hintStyle: TextStyle(
                                                          color: Colors.black
                                                      ),
                                                      border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(20))
                                                      )
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 30,),
                                              GestureDetector(
                                                onTap: (){
                                                  DatePicker.showDatePicker(context,
                                                      showTitleActions: true,
                                                      minTime: DateTime(2018, 3, 5),
                                                      maxTime: DateTime(2019, 6, 7),  onConfirm: (date) {
                                                        setState(() {
                                                          CheckoutController

                                                              .text = date.toString().split(' ').first;
                                                        });
                                                      }, currentTime: DateTime.now(), locale: LocaleType.en);
                                                },
                                                child: TextField(
                                                  controller: CheckoutController,
                                                  enabled: false,
                                                  decoration: InputDecoration(
                                                      hintText: "Checkout........",
                                                      hintStyle: TextStyle(
                                                          color: Colors.black
                                                      ),
                                                      border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.all(Radius.circular(20))
                                                      )
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          actions: [
                                            TextButton(
                                              child: Text("OK"),
                                              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (ctx)=>HomeScreen2()));},
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  child: ListTile(
                                    title: Text(oyoModel.suggestions![index].entities![ind].name.toString()),
                                  ),
                                );
                              }),
                            ),
                            Divider(thickness: 4,)
                          ],
                        ),

                      );
                    },shrinkWrap: true,
                        itemCount: oyoModel.suggestions!.length),
                  )
                ],
              ),
            );
      }return Container();
  },
),
          ],
        ),
      ),
    );
  }
}
