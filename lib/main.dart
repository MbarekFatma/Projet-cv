import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:voyage/pages/SplachScreen.dart';


void main()=> runApp(MyApp());
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:FutureBuilder(
          future:SharedPreferences.getInstance(), 
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) { 

            return SplachScreen();
        },
              
      ),

        debugShowCheckedModeBanner: false,
      
      
      
      
      
       /* debugShowCheckedModeBanner: false,
       title: 'CV mobile',
      initialRoute: 'about',
      routes: {
          'about':(_)=>AboutPage()
      },*/


    );
  }
}