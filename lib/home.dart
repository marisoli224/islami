
import 'package:flutter/material.dart';
import 'package:islami/ahadeath/hadeath.dart';
import 'package:islami/al_quran/quran.dart';
import 'package:islami/al_radio/radio.dart';
import 'package:islami/al_sebha/sabha.dart';
import 'package:islami/setting.dart';
import 'package:islami/al_quran/sura_name.dart';

import 'myThem.dart';

class Home extends StatefulWidget {

  static String routName = "home";
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Widget> taps = [
    Quran(),
    Hadeath(),
    Sebha(),
    MyRadio(),
    Setting(),

  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/default_bg.png",),
    fit: BoxFit.fill,
    ),

    ),
      child:  Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Center(
            child: Text(
              'islami',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ),
        body: taps[index],
        bottomNavigationBar: Theme(

          data: Theme.of(context).copyWith(
              canvasColor: MyThem.primary
          ),
          child: BottomNavigationBar(
            selectedItemColor: MyThem.accent,
             currentIndex: index,
            onTap: (clicked){
              index = clicked;

              setState(() {

              });
            },

            items:  [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_quran.png"),
                  ),
                  label: "quran",

              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_hadeth.png"),
                  ),
                  label: "hadeath"
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_sebha.png"),
                  ),
                  label: "sebha"
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/icon_radio.png"),
                  ),
                  label: "radio"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "setting"
              ),
            ],


          ),
        ),
      ),
    );
  }
}
