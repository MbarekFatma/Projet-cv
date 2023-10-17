import 'package:flutter/material.dart';


import '../menu/CardCustom.dart';
import '../menu/CardTop.dart';
import 'Aboutpage.dart';
import 'ContactPage.dart';
import 'EducatioPage.dart';
import 'ProfilePage.dart';
class ExperiencePage extends StatelessWidget
{
  final String description = "Projet : Création d’une plateforme Open Project: Développer les différents modules de la solution,Participer aux choix conceptuels et techniques,Structurer et organiser le code.";
  final String description1 = " Projet : Création d’une plateforme pour une société photovoltaïque:Structurer et organiser le code,Cadrage et conception d’application pour le client,Optimiser et améliorer les solutions déjà en place";
  final String description2 = "Projet : Création d’une plateforme : Structurer et organiser le code Travailler avec l’équipe d’innovation sur des nouvelles solutions";
  @override
  Widget build(BuildContext context )
  {
    return Scaffold(
      //backgroundColor: Color(0xff040305),
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
                 CardTop(icon:Icons.work_outline_outlined,text:'Experience',isColor:true,page: ExperiencePage()),
                 CardTop(icon:Icons.person_outline_rounded,text:'Education',isColor:false,page: EducatioPage()),
                 CardTop(icon:Icons.person_outline_rounded,text:'Contact',isColor:false,page: ContactPage()),
                 CardTop(icon:Icons.person_outline_rounded,text:'Profile',isColor:false,page: ProfilePage()),

               ],
             ),
             SizedBox(height: 15.0),
           GestureDetector(
             onTap: () {
               showDialog(
                   context: context,
                   builder: (BuildContext context) {
                     return AlertDialog(
                       content: Text(description),
                     );
                   });
             },
             child: CardCustom(
               text: 'Stage d’été',
               colorIcon: Color(0xffA36FF6),
               isEducation: true,
               education: "ExaDev–Sfax–De 06/2022  à 08/2022 (2 mois) ",
             ),
           ),
             GestureDetector(
               onTap: () {
                 showDialog(
                     context: context,
                     builder: (BuildContext context) {
                       return AlertDialog(
                         content: Text(description1),
                       );
                     });
               },
               child:CardCustom(text:'stage PFE',colorIcon:Color(0xffA36FF6),isEducation:true,education: "WEB Vue–Sfax–De 02/2021  à 06/2021 (4 mois)  ",),
             ),
             GestureDetector(
               onTap: () {
                 showDialog(
                     context: context,
                     builder: (BuildContext context) {
                       return AlertDialog(
                         content: Text(description2),
                       );
                     });
               },
               child: CardCustom(text:'Stage d’été',colorIcon:Color(0xffA36FF6),isEducation:true,education: "Poste",),
             ),


           ],
         ),
       )

     )
    );

  }
}