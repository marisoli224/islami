import 'package:flutter/material.dart';
import 'package:islami/al_quran/al_soura.dart';
import 'package:islami/myThem.dart';
import 'package:islami/al_quran/soura_data.dart';

class SuraName extends StatelessWidget {
String name ;
int index;
SuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
          Navigator.pushNamed(context,
              AlSoura.routName,
             arguments:SuraDta(suraName: name, fileName: "assets/quranKareem/${index+1}.txt"));
          //
      },

      child: Container(
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              color: MyThem.accent,
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
      ),
    );
  }
}
