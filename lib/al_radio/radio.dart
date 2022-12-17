import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/myThem.dart';

class MyRadio extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_image.png"),
        Text(
          "اذاعة القرءان الكريم",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.skip_previous,color: MyThem.primary),
            Icon(Icons.play_arrow,size: 50,color: MyThem.primary),
            Icon(Icons.skip_next,color: MyThem.primary),
          ],
        )
      ],

    );
  }
}