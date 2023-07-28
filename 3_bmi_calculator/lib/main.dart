import 'package:flutter/material.dart';

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

        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BmiPage(),
    );
  }
}

class BmiPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return BmiPageState();
  }
}
class BmiPageState extends State<BmiPage> {


  var height = TextEditingController();
  var weight = TextEditingController();
  double bmi = 0;
  var category = '';


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),

      body: Column(
        children: [

          SizedBox(
            height: 40,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [


              Text('Enter Height ' , style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700 ),),


              Row(
                children: [
                  Container(
                    width: 100,
                    height: 50,
                    child: TextField(

                      keyboardType: TextInputType.number,

                      controller: height,

                      // enabled: true,
                      decoration: InputDecoration(
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

                  Text('(cm)'),
                ],
              ),


            ],
          ),

          SizedBox(
            height: 40,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [


              Text('Enter Weight ' , style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700 ),),



              Row(
                children: [
                  Container(

                    width: 100,
                    height: 50,
                    child: TextField(

                      keyboardType: TextInputType.number,

                      controller: weight,

                      // enabled: true,
                      decoration: InputDecoration(
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

                  Text('(kgs)'),
                ],
              ),
            ],
          ),

          SizedBox(
            height: 40,
          ),

          ElevatedButton(
              onPressed: (){
            var h = int.parse(height.text.toString());
            var w = int.parse(weight.text.toString());
            var hm = h/100;
            bmi = (w/(hm*hm));

            if(bmi < 18.5){
              category = 'Underweight';
            }
            else if((bmi >= 18.5) && (bmi < 25)){
              category = 'Healthy Weight';
            }
            else if((bmi >= 25) && (bmi < 30)){
              category = 'Overweight';
            }
            else{
              category = 'Obesity';
            }

            setState(() {

            });

          }, child: Text('Compute BMI' , style: TextStyle(fontSize: 20 , color: Colors.black),) ),

          SizedBox(
            height: 40,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [

              Text('Your Current BMI ' , style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700 ),),

              Text('${bmi.toStringAsFixed(2)}', style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700 ),),

            ],
          ),

          SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [

              Text('Your Category ' , style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700 ),),

              Text('$category', style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700 ),),

            ],
          ),


        ],
      ),
    );
  }
}
