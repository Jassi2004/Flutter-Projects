import 'dart:async';
import 'package:flutter/material.dart';
import 'package:zomato_clone/splashScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: mainScreen(),
    );
  }
}

// class mainScreen extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//
//   }
//
// }

class mainScreen extends StatefulWidget{
  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {

  var ctr = 0;
  var discount;
  Timer? timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      // print(ctr);
      // print(discount);
      setState(() {
        if(ctr==3){
          ctr=-1;
        }
        ctr++;
        if(ctr==0){
            discount = 'Get Free Dishes';
        }
        else if(ctr==1){
          discount = 'Unlimited Discounts';
        }
        else{
          discount = 'Fastest Deliveries';
        }
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(
              height: 50,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on , color: Color(0xFFef4d5c) ,size: 42,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Your Location', style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                        Text('India')
                      ],
                    ),
                    Icon(Icons.arrow_drop_down_sharp ,size: 42,),
                  ],
                ),

                Row(
                  children: [
                    Icon(Icons.language_rounded , size: 35,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF445a65),
                          radius: 19,
                          child: Icon(FontAwesomeIcons.user)),
                    ),
                  ],
                ),




              ],
            ),

            Container(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search , color: Color(0xFFef4d5c) ,size: 32,),
                  hintText: 'search chaap',
                  suffixIcon: Icon(Icons.mic , color: Color(0xFFef4d5c) ,size: 32,),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.white10,
                        width: 2,)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      )
                  ),
                ),
            ),
            ),
            
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    child: Image(image: AssetImage('assets/images/goldMember.png')),
                  ),
                ),
                // Container(
                //   color: Colors.amberAccent,
                //   width: 100,
                //   height: 100,
                // ),
              ],
            ),

            Container(
                child: Image(image: AssetImage('assets/images/explore.png')),
              ),

            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.1),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.yellow,
                    blurRadius: 10
                  )
                ]
              ),

              child: Padding(
                padding: const EdgeInsets.only(left: 30 , top: 20 , bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$discount' , style: TextStyle( fontSize: 24 , fontWeight: FontWeight.w900),),
                    Text('on All Orders'),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Image(image: AssetImage('assets/images/WhatsOnYourMind.png')),

            // Container(
            //   child: ListView.builder(itemBuilder: (context, index) {
            //     return Container(
            //       color: Colors.blueAccent,
            //       child: Text('$index'),
            //     );
            //   },itemCount: 10,
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
  }


