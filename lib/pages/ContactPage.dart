import 'package:flutter/material.dart';

import '../menu/CardCustom.dart';
import '../menu/CardTop.dart';

import 'Aboutpage.dart';
import 'ContactProfile.dart';
import 'EducatioPage.dart';
import 'ExperiencePage.dart' show ExperiencePage;
import 'ProfilePage.dart';
import 'data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class ContactPage extends StatelessWidget {
  final List<Map<String, dynamic>> data = [    { 'name': 'Email',      'icon': FontAwesomeIcons.envelope,      'color': Colors.red,      'url': "https://mail.google.com"    },    {      'name': 'LinkedIn',      'icon': FontAwesomeIcons.linkedin,      'color': Colors.blue,      'url': 'https://www.linkedin.com/in/example/'    },    {      'name': 'Twitter',      'icon': FontAwesomeIcons.twitter,      'color': Colors.lightBlue,      'url': 'https://twitter.com/example'    } ,{
    "name": "GitHub",
    "url": "https://github.com",
    "icon": FontAwesomeIcons.github,
    "color": Colors.black,
  },
    {
      "name": "GoogleMaps",
      "url": "https://www.google.com/maps/place/Rte+Chaabouni,+Sfax/@34.7387827,10.7074524,17z/data=!3m1!4b1!4m6!3m5!1s0x13002caa7ed4d99d:0x6e328c0a8406712c!8m2!3d34.7387827!4d10.7100273!16s%2Fg%2F11bc8c7zlr",
      "icon": FontAwesomeIcons.addressCard,
      "color": Colors.redAccent,
    },
  ];

  void _launchURL(String _url) async {
    if (!await launch(
      _url,
      forceWebView: true,
      enableJavaScript: true,
    )) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Contact',
          style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Column(
    children: [
    SingleChildScrollView(
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
    CardTop(icon:Icons.person_outline_rounded,text:'Contact',isColor:true,page: ContactPage()),
    CardTop(icon:Icons.person_outline_rounded,text:'Profile',isColor:false,page: ProfilePage()),
    ],
    ),
    ], ),),),
      SizedBox(height: 15.0),
      Container(
        child: ListView(
          shrinkWrap: true,
          children: data.map((item) {
            return Card(
              child: ListTile(
                onTap: () => _launchURL(item['url']),
                leading: CircleAvatar(
                  backgroundColor: Colors.pink[100],
                  child: FaIcon(
                    item['icon'],
                    color: item['color'],
                    size: 25,
                  ),
                ),
                title: Text(
                  item['name'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(item['url']),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: () => _launchURL(item['url']),
                ),
              ),
            );
          }).toList(),
        ),
      ),
              ],





          ),
      ),
    );
  }
}
/*class ContactPage extends StatelessWidget{
  void _launchURL(String _url) async {
    if (!await launch(
      _url,
      forceWebView: true,
      enableJavaScript: true,)) throw 'Could not launch $_url';
  }
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
        body:Column(
          children: [
            SingleChildScrollView(
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
    CardTop(icon:Icons.person_outline_rounded,text:'Contact',isColor:true,page: ContactPage()),
    CardTop(icon:Icons.person_outline_rounded,text:'Profile',isColor:false,page: ProfilePage()),
  ],
    ),
            SizedBox(height: 30.0),
      ],
    ),

    ),
            ),
          ],

        ),


    );





  }
}*/