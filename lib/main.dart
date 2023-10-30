import 'package:flutter/material.dart';
import 'package:bike/home_screen.dart';
import 'package:bike/check_out.dart';
import 'package:bike/bike_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});
 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {'/':(context)=>HomeScreen(),
                '/checkout':(context)=>Checkout(),
                '/details':(context)=>BikeDetails()},
    );
  }
}


