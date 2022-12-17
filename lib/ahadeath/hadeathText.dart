import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ahadeath/hadeath_data.dart';

class HadeathText extends StatelessWidget {

  static String routName = "alhadeath";



  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadeathData;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/default_bg.png",),
          fit: BoxFit.fill,
        ),

      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Center(
              child: Text(
               args.hadeathName,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: Text(
             args.hadeathContent,

              style: TextStyle(
                  fontWeight: FontWeight.w800
              )
          )
      ),
    );
  }
}