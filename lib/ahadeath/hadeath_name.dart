import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ahadeath/hadeathText.dart';
import 'package:islami/ahadeath/hadeath_data.dart';

import '../myThem.dart';

class HadeathName extends StatelessWidget {
  HadeathData itemHadeath;
  HadeathName({required this.itemHadeath});


  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,
           HadeathText.routName,
            arguments:HadeathData(hadeathName: itemHadeath.hadeathName, hadeathContent: itemHadeath.hadeathContent));

      },

      child: Container(
        child: Center(
          child: Text(
           itemHadeath.hadeathName,
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