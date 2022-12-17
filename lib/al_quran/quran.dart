import 'package:flutter/material.dart';
import 'package:islami/myThem.dart';
import 'package:islami/al_quran/sura_name.dart';

class Quran extends StatelessWidget {

static String routName = "quran";

List<String> names = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];



  @override
  Widget build(BuildContext context) {
    return  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           Expanded(
               child: Image(image: AssetImage("assets/images/qur2an_screen_logo.png"))),
            Divider(thickness: 3,color: MyThem.primary,),
            Center(
              child: Text(
                "sura name",
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
                  itemCount: names.length,
                  itemBuilder: (context, index) => SuraName(name: names[index], index: index,), ))
          ],





    );
  }
}
