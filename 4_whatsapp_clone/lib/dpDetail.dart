import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'main.dart';

class dpDetailScreen extends StatelessWidget{
  var url_from_above;
  dpDetailScreen(
      this.url_from_above,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color(0xFF121b22),
        child: Column(
              children: [

                SizedBox(
                  height: 70,
                ),

                Container(
                  width: 300,
                  color: Color(0xFF1f2c34),
                  child: Row(
                    children: [

                      InkWell(
                          onTap: () {
                            Navigator.pop(context, MaterialPageRoute(builder: (context) {
                              return LoginPage();
                            },));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FaIcon(FontAwesomeIcons.arrowLeft , size: 35 , color: Color(0xFF7e8b94),),
                          )
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      Text('$url_from_above' , style: TextStyle(fontSize: 35 , color: Color(0xFF7e8b94),),)
                    ],
                  ),
                ),

                Container(
                  width: 300,
                  height: 300,
                  color: Colors.black,
                  child: Image(image: AssetImage('assets/images/$url_from_above.png')),
                ),

                Container(
                  width: 300,
                  height: 60,
                  color: Color(0xFF1f2c34),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(FontAwesomeIcons.message , size: 30, color: Color(0xFF00ad82),),
                      FaIcon(FontAwesomeIcons.phone , size: 30, color: Color(0xFF00ad82),),
                      FaIcon(FontAwesomeIcons.videoCamera , size: 30, color: Color(0xFF00ad82),),
                      FaIcon(FontAwesomeIcons.infoCircle , size: 30, color: Color(0xFF00ad82),),
                    ],
                  ),
                ),

              ],
            ),
      ),
      );
  }

}