import 'package:flutter/material.dart';

import '../menu/CardCustom.dart';
import '../menu/CardTop.dart';
import 'Aboutpage.dart';
import 'ContactPage.dart';
import 'ExperiencePage.dart';
import 'ProfilePage.dart';
class EducatioPage extends StatelessWidget{
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      backgroundColor:Colors.white,

      appBar: AppBar(
        backgroundColor:Colors.white,

          elevation:0,
          title: Text('About Me',style: TextStyle(color:Colors.pinkAccent,fontWeight: FontWeight.bold)),
        ),
        body:SingleChildScrollView(
        child:Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
    child: Column(
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  CardTop(icon:Icons.person_outline_rounded,text:'About Me',isColor:false, page: AboutPage(),),
  CardTop(icon:Icons.work_outline_outlined,text:'Experience',isColor:false,page: ExperiencePage()),
  CardTop(icon:Icons.person_outline_rounded,text:'Education',isColor:true,page: EducatioPage()),
    CardTop(icon:Icons.person_outline_rounded,text:'Contact',isColor:false,page: ContactPage()),
    CardTop(icon:Icons.person_outline_rounded,text:'Profile',isColor:false,page: ProfilePage()),
],
    ),
  SizedBox(height: 15.0),
  CardCustom(text:'Génie Informatique– Institut International de Technologie -Sfax',colorIcon:Color(0xffA36FF6),isEducation:true,education: "2021-Présent  . university",),
  CardCustom(text:'Licence Applique en Informatique de gestion– Ecole Supérieure de Commerce (ESC)- Sfax',colorIcon:Color(0xffA36FF6),isEducation:true,education: "2020-2021 ",),
  CardCustom(text:'Baccalauréat Mathématique  – Lycée 20 mars 1956– Sfax',colorIcon:Color(0xffA36FF6),isEducation:true,education: "2017-2018 . university",),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
      InkWell(
  onTap: () {
  showDialog(
  context: context,
  builder: (BuildContext context) {
  return Dialog(
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20.0),
  ),
  child: Container(
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(20.0),
  image: DecorationImage(
  image: AssetImage('images/certificat.jpg'),
  fit: BoxFit.cover,
  ),
  ),
  ),
  );
  },
  );
  },
  child:
  Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
    height: 150,
    width:200,
  decoration: BoxDecoration(
  color:Color(0xff1F1E25),
  borderRadius: BorderRadius.circular(20.0)
  ),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Icons.star_border_outlined,color:Color(0xffA36FF6),size: 35,),
  SizedBox(height: 5),
  Text('web Developer en Java' ,style: TextStyle(color:Colors.white,fontSize: 16)),
  SizedBox(height: 5),
  Text('2020' ,style: TextStyle(color:Colors.white,fontSize: 16)),
  ],

  ),
    ),

    ],
  )),
      InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage('images/certificat.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 150,
                width:200,
                decoration: BoxDecoration(
                    color:Color(0xff1F1E25),
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star_border_outlined,color:Color(0xffA36FF6),size: 35,),
                    SizedBox(height: 5),
                    Text('web Developer en php' ,style: TextStyle(color:Colors.white,fontSize: 16)),
                    SizedBox(height: 5),
                    Text('2020' ,style: TextStyle(color:Colors.white,fontSize: 16)),
                  ],

                ),
              ),

            ],
          ))])
    ],

    ),

    ),
    ),
    );
  }
}