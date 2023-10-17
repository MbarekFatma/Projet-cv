
import 'package:flutter/material.dart';


import '../menu/CardCustom.dart';
import '../menu/CardTop.dart';
import '../menu/ProgressBarCustom.dart';
import 'Aboutpage.dart';
import 'ContactPage.dart';
import 'EducatioPage.dart';
import 'ExperiencePage.dart';
import 'ProfilePage.dart';


class  ContactProfile extends StatefulWidget
{

  @override
  State<ContactProfile> createState() => _ContactProfileState();
}

class _ContactProfileState extends State<ContactProfile> {



  @override
  Widget build(BuildContext context )
  {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Color(0xFFD54275),
            title: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/hijab.jpg'),
                  backgroundColor: Colors.transparent, // Assurez-vous que le fond est transparent pour que l'image soit visible
                  radius: 40, // Définissez le rayon souhaité ici
                ),


                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fatma Mbarek',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),


                  ],
                ),
              ],
            ),
          ),
        ),

        body:SingleChildScrollView(

          child:Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    CardTop(icon:Icons.work_outline_outlined,text:'Experience',isColor:false,page: ExperiencePage()),
                    CardTop(icon:Icons.person_outline_rounded,text:'Education',isColor:false,page: EducatioPage()),
                    CardTop(icon:Icons.person_outline_rounded,text:'Contact',isColor:false,page: ContactPage()),

                    CardTop(icon:Icons.person_outline_rounded,text:'Profile',isColor:false,page: ProfilePage()),
                    CardTop(icon:Icons.person_outline_rounded,text:'Profile',isColor:false,page: ContactProfile()),
                  ],
                ),
                SizedBox(height: 30.0),

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
                            width: 500,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Projet :',
                                style: TextStyle(
                                    color: Color(0xFF2E4F4F),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                  ),
                ),
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
                            width: 500,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '•	Application Détection de Visage (Opencv)',
                                style: TextStyle(
                                    color: Color(0xFF2E4F4F),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                  ),
                ),
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
                            width: 500,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '•Application Web Location de Voiture (Angular )',
                                style: TextStyle(
                                    color: Color(0xFF2E4F4F),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                  ),
                ),
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
                            width: 500,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '•Site Web projet IIT (HTML , CSS, JavaScript)',
                                style: TextStyle(
                                    color: Color(0xFF2E4F4F),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                  ),
                ),
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
                            width: 500,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '•Plateforme Solaire (Laravel)',
                                style: TextStyle(
                                    color: Color(0xFF2E4F4F),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                  ),
                ),
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
                            width: 500,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '	•Robots Suiveurs de Ligne (Arduino , deuxième place)',
                                style: TextStyle(
                                    color: Color(0xFF2E4F4F),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                  ),
                ),
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
                            width: 500,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "•Projet Mesure d'Humidité pour un Arrosage Automatique ",
                                style: TextStyle(
                                    color: Color(0xFF2E4F4F),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                  ),
                ),
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
                            width: 500,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "•Data Mining : Dataset  :Détection du cancer de poumon",
                                style: TextStyle(
                                    color: Color(0xFF2E4F4F),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),

                  ),
                ),
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
                            width: 500,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "•Gestion de Cabinet  Médicale(Asp.Net)",
                                style: TextStyle(
                                    color: Color(0xFF2E4F4F),
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
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

