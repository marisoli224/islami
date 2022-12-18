import 'package:flutter/material.dart';
import 'package:islami/ahadeath/hadeathText.dart';
import 'package:islami/al_quran/al_soura.dart';
import 'package:islami/home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/myThem.dart';
import 'package:islami/setting_provider.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider(

      create: (BuildContext context) => SettingProvider(),
      child:  MyApp()));
}

class MyApp extends StatelessWidget {


late SettingProvider provider ;
  @override
  Widget build(BuildContext context) {
 provider = Provider.of(context);

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

      locale: Locale(provider.currentLocal),


      theme: MyThem.lightTheme,
      darkTheme: MyThem.darkTheme,
      themeMode: provider.currentTheme,



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
