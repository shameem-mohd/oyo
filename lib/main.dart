import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oyo/Bloc/oyo_bloc.dart';
import 'package:oyo/Locations.dart';
import 'package:oyo/MainHome.dart';

void main() {
  runApp(MultiBlocProvider(
      providers: [BlocProvider(create: (ctx)=>OyoBloc())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MainHome(),
    );
  }
}
