import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/myBottonSheet.dart';

import 'myThem.dart';

class Setting extends StatefulWidget {


  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
            "language",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              showLanguegeButtonSheet();
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
              ),
              child: Row(
                children: [
                  Icon(Icons.arrow_downward,color: MyThem.primary),
                  Spacer(),
                  Text(
                    "English",
                    style: TextStyle(
                      color:  MyThem.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Theme",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              showThemeButtonSheet();
            },
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
              ),
              child: Row(
                children: [
                  Icon(Icons.arrow_downward,color: MyThem.primary),
                  Spacer(),
                  Text(
                    "Light",
                    style: TextStyle(
                      color:  MyThem.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }

  void showThemeButtonSheet() {
    showModalBottomSheet(context: context, builder: (context){
      return MyButtonSheet(item1: "Light",item2: "Dark",);
    });
  }

  void showLanguegeButtonSheet() {
    showModalBottomSheet(context: context, builder: (context){
      return MyButtonSheet(item1: "العربية",item2: "English",);
    });
  }
}