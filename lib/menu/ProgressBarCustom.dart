import 'package:flutter/material.dart';
class ProgressBarCustom extends StatefulWidget{
  final String skill;
  final String porcentaje;
  final Color color;
  final double  barra;
  const  ProgressBarCustom({required this.skill,required this.porcentaje,required this.color,required this.barra});

  @override
  State<ProgressBarCustom> createState() => _ProgressBarCustomState();
}

class _ProgressBarCustomState extends State<ProgressBarCustom>  with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation;
  double _percentage = 0;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _animation = Tween<double>(begin: 0, end: 100).animate(_controller)
      ..addListener(() {
        setState(() {
          _percentage = _animation.value;
        });
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(bottom:25.0),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.skill,style:TextStyle(color:Colors.white,fontSize: 16)),
              Text('${_percentage.toStringAsFixed(0)}%',style:TextStyle(color:Colors.white,fontSize: 16)),
            ],
          ),
          SizedBox(height: 10.0),
          Stack(
            children: [
              Container(
                height: 9,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white
                )
              ),
              Container(
                height: 9,
                width: widget.barra * (_percentage / 100),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: widget.color
                ),
              ),
            ],
          ),
      ],
      ),
    );}
}






