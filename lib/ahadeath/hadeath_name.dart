import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ahadeath/hadeathText.dart';
import 'package:islami/ahadeath/hadeath_data.dart';
import 'package:provider/provider.dart';

import '../myThem.dart';
import '../setting_provider.dart';

class HadeathName extends StatelessWidget {
  HadeathData itemHadeath;
  HadeathName({required this.itemHadeath});


  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
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
              color: provider.currentTheme == ThemeMode.light? Colors.black: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
      ),
    );
  }
}