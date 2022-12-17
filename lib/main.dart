import 'package:flutter/material.dart';
import 'package:islami/ahadeath/hadeathText.dart';
import 'package:islami/al_quran/al_soura.dart';
import 'package:islami/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        supportedLocales: [
          Locale('en'),
          Locale('ar'),
        ],


        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],

      locale: Locale("en"),

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
