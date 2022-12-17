import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ahadeath/hadeathText.dart';
import 'package:islami/ahadeath/hadeath_name.dart';

import 'hadeath_data.dart';
import '../myThem.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Hadeath extends StatefulWidget {
  @override
  State<Hadeath> createState() => _HadeathState();
}

class _HadeathState extends State<Hadeath> {
  String fileName = "assets/hadeth/ahadeth .txt";
  String content= "";
 List<HadeathData> model = [];



  @override
  Widget build(BuildContext context) {
    if (content.isEmpty){
        readFile(fileName);
    }
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: Image(image: AssetImage("assets/images/hadeth_logo.png"))),
        Divider(thickness: 3,color: MyThem.primary,),
        Center(
          child: Text(
            AppLocalizations.of(context)!.hadeath,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: MyThem.accent,
                fontSize: 25
            ),
          ),
        ),

        Divider(thickness: 3,color: MyThem.primary,),
        Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: model.length,
              itemBuilder: (context, index) => HadeathName(itemHadeath: model[index], )))
      ],
    );
  }

  readFile(String fileName) async{
    String contentFile = await rootBundle.loadString(fileName);


    List<String> hadeth = contentFile.split("#\r\n");
    for (int i = 0; i < hadeth.length; i++){
      List<String> lines = hadeth[i].split("\n") ;
      String titel = lines[0];
      lines.removeAt(0);
       content = lines.join();

      model.add(HadeathData(hadeathName: titel, hadeathContent: content));
      print(model[i]);
    }

    setState(() {

    });

  }
}
