
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/al_quran/soura_data.dart';

import '../myThem.dart';

class AlSoura extends StatefulWidget {
  static String routName = "alsoura";

  @override
  State<AlSoura> createState() => _AlSouraState();
}

class _AlSouraState extends State<AlSoura> {
 //String content = "";
List<String> ayah = [];
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDta;
    if (ayah.isEmpty) {
      readFile(args.fileName);
    }
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/default_bg.png",),
          fit: BoxFit.fill,
        ),

      ),
      child:  Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Center(
            child: Text(
              args.suraName,
              style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: ayah.length,
            itemBuilder: (_, index){
          return Column(
            children: [
              Text(textAlign: TextAlign.center,
                 // textDirection: TextDecoration.rtl,
                  "${ ayah[index]}{${index+1}}"
                 ,
              style: TextStyle(
                fontWeight: FontWeight.w700
              )),
              Divider(thickness: 1,color: MyThem.primary,),
            ],
          );
        })
      ),
    );


  }

  readFile(String fileName) async{
    String contentFile = await rootBundle.loadString(fileName);
    //content = contentFile;

    ayah = contentFile.split("\n");
    ayah = ayah.where((line) => line.trim().isNotEmpty).toList();
    setState(() {

    });

  }
}
