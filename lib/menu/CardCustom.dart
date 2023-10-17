import 'package:flutter/material.dart';
class CardCustom extends StatelessWidget{
  final String text;
  final String education;
  final Color colorIcon;
  final bool isEducation;
  const CardCustom({required this.text,required this.colorIcon,required this.isEducation,required this.education}) ;


  @override
  Widget build(BuildContext context){
    return Padding(
        padding: EdgeInsets.only(bottom: 20.0),
      child:Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color:Color(0xff1F1E25),
            borderRadius: BorderRadius.circular(20.0)
        ),
        child: Row(
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  color:this.colorIcon,
                  borderRadius: BorderRadius.circular(15.0)
              ),
              child: Icon(Icons.work_outline_outlined,color:Colors.white),
            ),
            SizedBox(width: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text,style: TextStyle(color:Colors.white,fontSize: 16)),
                SizedBox(height: 7.0),
                !isEducation
                ?Text('2020-new',style: TextStyle(color:Colors.grey,fontSize: 16))
                : Text(education,style: TextStyle(color:Colors.grey,fontSize: 16))
              ],
            )
          ],
        ),
      ),
    );
  }

}