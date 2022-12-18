import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/myThem.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../setting_provider.dart';
class Sebha extends StatefulWidget {

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
double angle = 0;
int count = 0;
int currentIndex = 0;
List<String> zikr = [
  "سبحان الله",
  "الحمد لله",
  "الله اكبر",
];
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Container(
     width: double.infinity,

      child: Center(
        child: Column(
          children: [
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: (){
                  rotateSebha();

              },
              child: Container(
                height: MediaQuery.of(context).size.height*.52,
                width: MediaQuery.of(context).size.width*.6 ,
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset("assets/images/head_sebha_logo.png",),
                    left: MediaQuery.of(context).size.width*.32,
                  //  bottom:  MediaQuery.of(context).size.height*.35,
                    ),
                    Transform.rotate(
                      angle: angle,
                      child: Center(
                        child: Image.asset("assets/images/body_sebha_logo.png"),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text(
             AppLocalizations.of(context)!.num_of_tasbeah ,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color:provider.currentTheme == ThemeMode.light? Colors.black: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: provider.currentTheme == ThemeMode.light? MyThem.primary : MyThem.accentDark,
              ),
              child: Text(
                "$count",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color:provider.currentTheme == ThemeMode.light? Colors.black: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: 160,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: provider.currentTheme == ThemeMode.light? MyThem.primary : MyThem.accentDark,
              ),
              child: Text(
               zikr[currentIndex],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  rotateSebha (){
    angle--;
    count++;
    if (count == 4){
      count = 0;
      currentIndex ++;
    }

    setState(() {
     if (currentIndex == 3){
       currentIndex =0;
     }
    });
  }
}
