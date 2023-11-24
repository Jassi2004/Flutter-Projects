import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 10), () {
      callMainScreen();
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFF273443),
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(
                  height: 300,
                ),
                FaIcon(FontAwesomeIcons.whatsapp , size: 100, color: Colors.white),

                Text('WhatsApp Clone' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600 ,color: Colors.white),),

                SizedBox(
                  height: 200,
                ),

                Text('From' , style: TextStyle(fontSize: 15 ,color: Colors.white),),

                Text('Jaskirat Singh', style: TextStyle(fontSize: 17 ,color: Colors.white),)
              ],
            ),
          ),
        ),
      ),
    );

  }

  void callMainScreen(){

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const LoginPage();
    },));
  }
}