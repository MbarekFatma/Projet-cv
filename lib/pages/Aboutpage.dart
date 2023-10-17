import 'package:flutter/material.dart';
import '../pages/ContactProfile.dart';

import '../menu/CardTop.dart';
import '../pages/EducatioPage.dart';
import '../pages/ExperiencePage.dart';
import '../menu/ProgressBarCustom.dart';
import 'ContactPage.dart';
import 'ProfilePage.dart';


class AboutPage extends StatefulWidget{


  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> with SingleTickerProviderStateMixin {
  final List<String> interests = ['sport', 'Lecture', 'Musique', 'Voyage'];
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 1, end: 1.2).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();}
  @override
  Widget build(BuildContext context){
    return Scaffold(
     backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        title: Text('About Me',style: TextStyle(color:Colors.pinkAccent,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Row(
          children: [
          Image.asset(
            'assets/images/hijab.jpg',
            width: 100.0,
            height: 100.0,
          ),
          SizedBox(width: 10.0),
            Expanded(
            child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardTop(icon:Icons.person_outline_rounded,text:'About Me',isColor:true, page: AboutPage(),),
                  CardTop(icon:Icons.work_outline_outlined,text:'Experience',isColor:false,page: ExperiencePage()),
                 CardTop(icon:Icons.person_outline_rounded,text:'Education',isColor:false,page: EducatioPage()),
                  CardTop(icon:Icons.person_outline_rounded,text:'Contact',isColor:false,page: ContactPage()),
                  CardTop(icon:Icons.person_outline_rounded,text:'Profile',isColor:false,page: ContactProfile()),
                  CardTop(icon:Icons.person_outline_rounded,text:'Profile',isColor:false,page: ProfilePage()),
                ],
              ),
           ),
          ],
          ),

           SizedBox(height: 15.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 40.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color:Color(0xff1F1E25),
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Skils',style:TextStyle(color:Colors.white,fontSize: 18)),
                    SizedBox(height: 30.3),
                    ProgressBarCustom(skill:'c#',porcentaje:'50',color:Color(0xffA36FF6),barra:300.0),
                    ProgressBarCustom(skill:'c',porcentaje:'60',color:Color(0xffA36FF6),barra:300.0),
                  ProgressBarCustom(skill:'Java',porcentaje:'70',color:Color(0xffA36FF6),barra:300.0),
                  ProgressBarCustom(skill:'Html',porcentaje:'66',color:Color(0xffA36FF6),barra:300.0),
                    ProgressBarCustom(skill:'Typescript',porcentaje:'80',color:Color(0xffA36FF6),barra:300.0),
                    ProgressBarCustom(skill:'Angular',porcentaje:'70',color:Color(0xffA36FF6),barra:300.0),
                    ProgressBarCustom(skill:'php',porcentaje:'60',color:Color(0xffA36FF6),barra:300.0),


                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 40.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    color:Color(0xff1F1E25),
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bases de Données',style:TextStyle(color:Colors.white,fontSize: 18)),
                    SizedBox(height: 30.3),
                    ProgressBarCustom(skill:'MySql',porcentaje:'95',color:Color(0xffA36FF6),barra:100.0),
                    ProgressBarCustom(skill:'SqlLite',porcentaje:'80',color:Color(0xffA36FF6),barra:100.0),
                    ProgressBarCustom(skill:'SqlServer',porcentaje:'70',color:Color(0xffA36FF6),barra:100.0),

                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 40.0),
                width: double.infinity,
                decoration: BoxDecoration(
                    color:Color(0xff1F1E25),
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Frameworks',style:TextStyle(color:Colors.white,fontSize: 18)),
                    SizedBox(height: 30.3),
                    ProgressBarCustom(skill:'.NET',porcentaje:'95',color:Color(0xffA36FF6),barra: 100.0,),
                    ProgressBarCustom(skill:'Angular',porcentaje:'80',color:Color(0xffA36FF6),barra:100.0),
                    ProgressBarCustom(skill:'Asp.Net',porcentaje:'70',color:Color(0xffA36FF6),barra:100.0),

                  ],
                ),
              ),

              SizedBox(height: 15.0),
          Column(
            children: [
              Text('Interests',style:TextStyle(color:Colors.black,fontSize: 18)),
              SizedBox(height: 15.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: interests.map((interest) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: GestureDetector(
                        onTapDown: (_) {
                          _controller.forward();
                        },
                        onTapCancel: () {
                          _controller.reverse();
                        },
                        onTapUp: (_) {
                          _controller.reverse();
                        },
                        child: ScaleTransition(
                          scale: _animation,
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color:Color(0xff1F1E25),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text(interest,style:TextStyle(color:Colors.white,fontSize: 16)),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),




          ],
          ),
        ),
      ),

    );
  }}