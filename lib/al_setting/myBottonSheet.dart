import 'package:flutter/cupertino.dart';

import '../myThem.dart';

class MyButtonSheet extends StatelessWidget {

  String item1 ;
  String item2 ;
   MyButtonSheet({required this.item1,required this.item2});

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Text(
         item1,
         style: TextStyle(
           color:  MyThem.primary,
           fontWeight: FontWeight.bold,
           fontSize: 20,
         ),
       ),
       SizedBox(
         height: 20,
       ),
       Text(
         item2,
         style: TextStyle(
           color:  MyThem.primary,
           fontWeight: FontWeight.bold,
           fontSize: 20,
         ),
       ),
     ],
    );
  }
}
