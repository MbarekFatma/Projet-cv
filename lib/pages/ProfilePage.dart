import 'package:flutter/material.dart';


import '../menu/CardCustom.dart';
import '../menu/CardTop.dart';
import '../menu/ProgressBarCustom.dart';
import 'Aboutpage.dart';
import 'ContactPage.dart';
import 'EducatioPage.dart';
import 'ExperiencePage.dart';
class ProfilePage extends StatelessWidget
{

    @override
    Widget build(BuildContext context )
    {
      return Scaffold(
        //backgroundColor: Color(0xff040305),
          backgroundColor:Colors.white,
          appBar: AppBar(
            backgroundColor:Colors.white,

            elevation:0,
            title: Text('About Me',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)),
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
                        CardTop(icon:Icons.person_outline_rounded,text:'Education',isColor:false,page: EducatioPage()),
                        CardTop(icon:Icons.person_outline_rounded,text:'Contact',isColor:false,page: ContactPage()),
                        CardTop(icon:Icons.person_outline_rounded,text:'Profile',isColor:true,page: ProfilePage()),

                      ],
                    ),
                    SizedBox(height: 30.0),
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(image:AssetImage("images/hijab.jpg")),
                    ),
                  ) ,
                    const SizedBox(height: 10),
                    Text('fatmaMbarek',style:Theme.of(context).textTheme.headline4 ),
                    Text('fatma.mbarek@gmail.com',style:Theme.of(context).textTheme.bodyText2 ),
                    const SizedBox(height: 80,
                    width: 80,),
                    Container(
                      padding: EdgeInsets.all(2),
                      child: Card(
                        color: Color(0xFFCBE4DE),
                        elevation: 10,
                        shadowColor: Colors.blue,
                        clipBehavior: Clip.hardEdge,
                        child: Column(
                          children: [
                            InkWell(
                              child: SizedBox(
                                width: 300,
                                height: 40,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'About me :',
                                    style: TextStyle(
                                        color: Color(0xFF2E4F4F),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              child: const SizedBox(
                                width: 800,
                                height: 100,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Student in second year engineering at the International Institute of Technology of Sfax motivated, rigorous, demonstrative and endowed with an excellent level of communication. I am looking for an engineering internship. I am passionate about new technologies and associative work.',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )


                  ],

                ),
              ),

          )
      );

    }


  }

