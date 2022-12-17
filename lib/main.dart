import 'package:flutter/material.dart';
import 'package:islami/ahadeath/hadeathText.dart';
import 'package:islami/al_quran/al_soura.dart';
import 'package:islami/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(

      ),
      initialRoute: Home.routName,

      routes:
   {

     Home.routName :(_)=> Home(),
     AlSoura.routName :(_)=> AlSoura(),
     HadeathText.routName : (_)=>HadeathText(),

   }

    );
  }
}
