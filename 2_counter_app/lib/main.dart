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
        textTheme: TextTheme(
            headline1: TextStyle(fontSize: 50 , fontWeight: FontWeight.bold , color: Colors.lightBlue),
            headline2: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold , color: Colors.lightBlue),
        ),


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyCounterPage(),
    );
  }
}

class MyCounterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyCounterPageState();
  }
}

class MyCounterPageState extends State<MyCounterPage>{
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Counter Page')
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.lightBlue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  child: Text('${counter-2}' , style: Theme.of(context).textTheme.headline2,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.lightGreenAccent,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  child: Text('${counter - 1}' , style: Theme.of(context).textTheme.headline2,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.lightGreenAccent,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  child: Text('$counter' , style: Theme.of(context).textTheme.headline1,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  child: Text('${counter + 1}' , style: Theme.of(context).textTheme.headline2,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.lightGreenAccent,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  child: Text('${counter + 2}' , style: Theme.of(context).textTheme.headline2,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.lightGreenAccent,
                  ),
                ),
              ],
            ),
          ),


          SizedBox(
            height: 200,
          ),

          Text('Click The Button' , style: Theme.of(context).textTheme.headline1,),

          Icon(Icons.arrow_downward_sharp , size: 100, color: Colors.lightBlue,),
          
          Container(
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){


                  counter++;
                  setState(() {

                  });

                }, child: Icon(Icons.add , size: 20, color: Colors.yellow,) ,
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      )
                    )
                  )
                ),
                ),

                ElevatedButton(onPressed: (){


                  counter--;
                  setState(() {

                  });

                }, child: Icon(Icons.remove , size: 20, color: Colors.yellow,) ,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              )
                          )
                      )
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}