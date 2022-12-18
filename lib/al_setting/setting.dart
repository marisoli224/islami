import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/al_setting/myBottonSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/al_setting/myBottonSheetTheme.dart';
import 'package:provider/provider.dart';
import '../myThem.dart';
import '../setting_provider.dart';

class Setting extends StatefulWidget {


  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
           AppLocalizations.of(context)!.language,
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
                  Icon(Icons.arrow_downward,color:provider.currentTheme == ThemeMode.light? MyThem.primary : MyThem.accentDark ),
                  Spacer(),
                  Text(
                    AppLocalizations.of(context)!.english,
                    style: TextStyle(
                      color: provider.currentTheme == ThemeMode.light? MyThem.primary : MyThem.accentDark ,
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
            AppLocalizations.of(context)!.theme,
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
                    provider.currentTheme == ThemeMode.light?  AppLocalizations.of(context)!.light: AppLocalizations.of(context)!.dark,
                 //   AppLocalizations.of(context)!.light,
                    style: TextStyle(
                      color: provider.currentTheme == ThemeMode.light? MyThem.primary : MyThem.accentDark,
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
      return MyButtonSheetTheme(item1: AppLocalizations.of(context)!.light,item2: AppLocalizations.of(context)!.dark,);
    });
  }

  void showLanguegeButtonSheet() {
    showModalBottomSheet(context: context, builder: (context){
      return MyButtonSheet(item1: "العربية",item2: "English",);
    });
  }
}