import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ahadeath/hadeath_data.dart';
import 'package:provider/provider.dart';

import '../myThem.dart';
import '../setting_provider.dart';

class HadeathText extends StatelessWidget {

  static String routName = "alhadeath";



  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadeathData;

    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.currentTheme == ThemeMode.light?"assets/images/default_bg.png":"assets/images/dark_bg.png",),
          fit: BoxFit.fill,
        ),

      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Center(
              child: Text(
               args.hadeathName,
                style: TextStyle(
                  color: provider.currentTheme == ThemeMode.light? MyThem.accent : MyThem.accentDark,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: Text(
             args.hadeathContent,

              style: TextStyle(
                  fontWeight: FontWeight.w800,
                color: provider.currentTheme == ThemeMode.light? Colors.black : MyThem.accentDark,
              )
          )
      ),
    );
  }
}