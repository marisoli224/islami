import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../myThem.dart';
import '../setting_provider.dart';

class MyButtonSheet extends StatelessWidget {

  String item1 ;
  String item2 ;
   MyButtonSheet({required this.item1,required this.item2});

  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Column(
     children: [
       InkWell(
         onTap: (){
           provider.changeCurrentLocal("ar");
         },
         child: Text(   item1,
           style: TextStyle(
             color:  provider.currentLocal == "ar"? Colors.blue:Colors.black,
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
    provider.changeCurrentLocal("en");
    },
         child: Text(
           item2,
           style: TextStyle(
             color: provider.currentLocal == "en"? Colors.blue:Colors.black,
             fontWeight: FontWeight.bold,
             fontSize: 20,
           ),
         ),
       ),
     ],
    );
  }
}
