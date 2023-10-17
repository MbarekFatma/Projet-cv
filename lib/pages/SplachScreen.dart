
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:voyage/pages/Aboutpage.dart';


class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
  }
  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      Center(
        child: Lottie.network("https://assets7.lottiefiles.com/packages/lf20_cg5hApEs03.json",
            controller:_controller,
            onLoaded: (compos){
              _controller
                ..duration= compos.duration
                ..forward().then((value) => Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>AboutPage())));
            }
        ),
      ),



    );
  }
}