import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../myThem.dart';
import '../setting_provider.dart';

class MyButtonSheetTheme extends StatelessWidget {

  String item1 ;
  String item2 ;
  MyButtonSheetTheme({required this.item1,required this.item2});

  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Column(
      children: [
        InkWell(
          onTap: (){
            provider.changeCurrentMode(ThemeMode.light);
          },
          child: Text(
            item1,
            style: TextStyle(
              color: provider.currentTheme == ThemeMode.light? Colors.blue : Colors.black ,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: (){
            provider.changeCurrentMode(ThemeMode.dark);
          },
          child: Text(
            item2,
            style: TextStyle(
              color:  provider.currentTheme == ThemeMode.dark?  Colors.blue : Colors.black ,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
