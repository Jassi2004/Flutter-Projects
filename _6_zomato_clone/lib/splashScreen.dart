import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return mainScreen();
      },));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFFe13742),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height:203,
              ),
              Text('ZOMATO' , style: TextStyle(color: Colors.white , fontSize: 35 , fontWeight: FontWeight.w900),),

              Text('100% Green Deliveries' , style: TextStyle(color: Colors.white , fontSize: 20, fontWeight: FontWeight.bold),),

              Text('Carbon and Plastic Neutral', style: TextStyle(color: Color(0xFFfea3b4) , fontSize: 20),),

              Text('in India', style: TextStyle(color: Color(0xFFfea3b4) , fontSize: 20),),

              Container(
                  width: 250,
                  height: 250,
                  child: Image(image: AssetImage('assets/images/bowl.png'))
              ),

              Image(image: AssetImage('assets/images/trees.png')),
            ],
          ),
        ),
      ),
    );
  }
}