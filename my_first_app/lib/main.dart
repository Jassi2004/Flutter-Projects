import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        textTheme: TextTheme(
            headline1 : TextStyle(color: Colors.black , fontSize: 20 ,fontWeight: FontWeight.w200  , fontFamily: 'MainFont2')

        )
        // style
      ),
      home: FormScreen(),
    );
  }
}


class FormScreen extends StatelessWidget{

  // var Name = TextEditingController();
  // var RollNo = TextEditingController();
  // var PhoneNo = TextEditingController();
  // var Email = TextEditingController();
  // var DOB = TextEditingController();
  // var Password = TextEditingController();

  var date_time = DateTime.now();

  var arrColors = [
    Colors.lightGreen,
    Colors.black,
    Colors.grey,
    Colors.deepPurple,
    Colors.pink,
    Colors.blue,
    Colors.white38,
    Colors.amberAccent,
    Colors.blue,
    Colors.lightGreen,
    Colors.pinkAccent,
    Colors.black38,
    Colors.black,
    Colors.lightGreenAccent,
    Colors.deepOrange,
    Colors.purple,
    Colors.deepPurple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Page'),
      ),
      body:
      //  ///////////////////////////////////////////////////////////////////
      // Grid View
      GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150 , crossAxisSpacing: 11 , mainAxisSpacing: 11)  , itemBuilder: (context, index) {
        return Container(
          width: 100,
          height: 100,
          color: arrColors[index],
          child: FaIcon(FontAwesomeIcons.amazonPay , size: 50,),
        );
      }, itemCount: arrColors.length,)


      //  ///////////////////////////////////////////////////////////////////


      //  ///////////////////////////////////////////////////////////////////
      // Date Time

      // Center(
      //   child: Center(
      //     child: Column(
      //       children: [
      //         // Container(
      //         //   width: 150,
      //         //   height: 150,
      //         //   child: Text('Current date and Time is ${DateFormat('yMMMMEEEEd').format(date_time)}' , style: Theme.of(context).textTheme.headline1,),
      //         // ),
      //         Container(
      //           width: 150,
      //           height: 150,
      //           child: ElevatedButton(onPressed: () async{
      //             DateTime? date = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime.now());
      //             if (date != null){
      //               print('Date Selected : ${date}');
      //               // print('Date Selected : ${DateFormat('yMMMMEEEEd').format(date)}');
      //             }
      //           } , child: Text('Select Date')),
      //
      //         )
      //       ],
      //     ),
      //   ),
      // ),

      //  ///////////////////////////////////////////////////////////////////


      //  ///////////////////////////////////////////////////////////////////
      // Fully Functional Form


      // SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(10),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             Expanded(
      //                 flex: 1,
      //                 child: Text('Name' , style: Theme.of(context).textTheme.headline1)),
      //             Expanded(
      //               flex: 2,
      //               child: Container(
      //                   width: 200,
      //                   child: TextField(
      //                     controller: Name,
      //                     decoration: InputDecoration(
      //                       focusedBorder: OutlineInputBorder(
      //                           borderRadius: BorderRadius.circular(15),
      //                           borderSide: BorderSide(
      //                             color: Colors.lightGreen,
      //                             width: 2,
      //                           )
      //                       ),
      //                       enabledBorder: OutlineInputBorder(
      //                             borderRadius: BorderRadius.circular(15),
      //                             borderSide: BorderSide(
      //                               color: Colors.indigoAccent,
      //                               width: 2,
      //                             )
      //                         ),
      //                         hintText: 'Enter name',
      //                         // border: OutlineInputBorder(
      //                         //     borderRadius: BorderRadius.circular(15),
      //                         //     borderSide: BorderSide(
      //                         //       color: Colors.indigoAccent,
      //                         //       width: 2,
      //                         //     )
      //                         // )
      //                     ),
      //                   )),
      //             )
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(10),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             Expanded(
      //                 flex: 1,
      //                 child: Text('Roll No' , style: Theme.of(context).textTheme.headline1)),
      //             Expanded(
      //               flex: 2,
      //               child: Container(
      //                   width: 200,
      //                   child: TextField(
      //                     controller: RollNo,
      //                     keyboardType: TextInputType.phone,
      //                     decoration: InputDecoration(
      //                       focusedBorder: OutlineInputBorder(
      //                           borderRadius: BorderRadius.circular(15),
      //                           borderSide: BorderSide(
      //                             color: Colors.lightGreen,
      //                             width: 2,
      //                           )
      //                       ),
      //                       enabledBorder: OutlineInputBorder(
      //                           borderRadius: BorderRadius.circular(15),
      //                           borderSide: BorderSide(
      //                             color: Colors.indigoAccent,
      //                             width: 2,
      //                           )
      //                       ) ,
      //                       hintText: 'Enter Roll no.',
      //                     ),
      //                   )),
      //             )
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(10),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             Expanded(
      //                 flex: 1,
      //                 child: Text('Phone Number' , style: Theme.of(context).textTheme.headline1)),
      //             Expanded(
      //               flex: 2,
      //               child: Container(
      //                   width: 200,
      //                   child: TextField(
      //                     controller: PhoneNo,
      //                     keyboardType: TextInputType.phone,
      //                     decoration: InputDecoration(
      //                       focusedBorder: OutlineInputBorder(
      //                           borderRadius: BorderRadius.circular(15),
      //                           borderSide: BorderSide(
      //                             color: Colors.lightGreen,
      //                             width: 2,
      //                           )
      //                       ),
      //                       enabledBorder: OutlineInputBorder(
      //                           borderRadius: BorderRadius.circular(15),
      //                           borderSide: BorderSide(
      //                             color: Colors.indigoAccent,
      //                             width: 2,
      //                           )
      //                       ) ,
      //                       suffixIcon: Icon(Icons.phone),
      //                       hintText: 'Enter Phone Number'
      //                     ),
      //                   )),
      //             )
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(10),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             Expanded(
      //                 flex: 1,
      //                 child: Text('E Mail' , style: Theme.of(context).textTheme.headline1)),
      //             Expanded(
      //               flex: 2,
      //               child: Container(
      //                   width: 200,
      //                   child: TextField(
      //                     controller: Email,
      //                     keyboardType: TextInputType.emailAddress,
      //                     decoration: InputDecoration(
      //                       focusedBorder: OutlineInputBorder(
      //                           borderRadius: BorderRadius.circular(15),
      //                           borderSide: BorderSide(
      //                             color: Colors.lightGreen,
      //                             width: 2,
      //                           )
      //                       ),
      //                       enabledBorder: OutlineInputBorder(
      //                           borderRadius: BorderRadius.circular(15),
      //                           borderSide: BorderSide(
      //                             color: Colors.indigoAccent,
      //                             width: 2,
      //                           )
      //                       ) ,
      //                       suffixIcon: Icon(Icons.mail),
      //                       hintText: 'Enter Email ID'
      //                     ),
      //                   )),
      //             )
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(10),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             Expanded(
      //                 flex: 1,
      //                 child: Text('Date Of Birth' , style: Theme.of(context).textTheme.headline1)),
      //             Expanded(
      //               flex: 2,
      //               child: Container(
      //                   width: 200,
      //                   child: TextField(
      //                     controller: DOB,
      //                     keyboardType: TextInputType.datetime,
      //                     decoration: InputDecoration(
      //                       focusedBorder: OutlineInputBorder(
      //                           borderRadius: BorderRadius.circular(15),
      //                           borderSide: BorderSide(
      //                             color: Colors.lightGreen,
      //                             width: 2,
      //                           )
      //                       ),
      //                       enabledBorder: OutlineInputBorder(
      //                           borderRadius: BorderRadius.circular(15),
      //                           borderSide: BorderSide(
      //                             color: Colors.indigoAccent,
      //                             width: 2,
      //                           )
      //                       ) ,
      //                       suffixIcon: Icon(Icons.calendar_month),
      //                       hintText: 'DD/MM/YYYY'
      //                     ),
      //                   )),
      //             )
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(10),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             Expanded(
      //                 flex: 1,
      //                 child: Text('Password' , style: Theme.of(context).textTheme.headline1)),
      //             Expanded(
      //               flex: 2,
      //               child: Container(
      //                   width: 200,
      //                   child: TextField(
      //                     obscureText: true,
      //                     obscuringCharacter: '*',
      //                     controller: Password,
      //                     decoration: InputDecoration(
      //                       focusedBorder: OutlineInputBorder(
      //                           borderRadius: BorderRadius.circular(15),
      //                           borderSide: BorderSide(
      //                             color: Colors.lightGreen,
      //                             width: 2,
      //                           )
      //                       ),
      //                       enabledBorder: OutlineInputBorder(
      //                           borderRadius: BorderRadius.circular(15),
      //                           borderSide: BorderSide(
      //                             color: Colors.indigoAccent,
      //                             width: 2,
      //                           )
      //                       ) ,
      //                       hintText: 'Enter Password',
      //                       suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye))
      //                     ),
      //                   )),
      //             )
      //           ],
      //         ),
      //       ),
      //
      //       ElevatedButton(onPressed: (){
      //         String uName = Name.text.toString();
      //         String uRollNo = RollNo.text.toString();
      //         String uPhoneNo = PhoneNo.text.toString();
      //         String uEmail = Email.text.toString();
      //         String uDOB = DOB.text.toString();
      //         String uPassword = Password.text.toString();
      //
      //         print(
      //               'Name: $uName \n'
      //               'Roll no: $uRollNo \n'
      //               'PhoneNo: $uPhoneNo\n'
      //               'Email: $uEmail\n'
      //               'DOB: $uDOB\n'
      //               'Password: $uPassword'
      //         );
      //       }, child: Text('SUBMIT' , style: Theme.of(context).textTheme.headline1,))
      //
      //     ],
      //   ),
      // ),
    );
  }
  
}




    //  ///////////////////////////////////////////////////////////////////
    //     TextField(

        //     Center(
        //       child: Container(
        //         width: 300,
        //         child: Column(
        //           children: [
        //
        //             Padding(
        //               padding: const EdgeInsets.all(10),
        //               child: TextField(
        //                 decoration: InputDecoration(
        //                   prefixIcon: Icon(Icons.ac_unit_outlined ,color: Colors.indigoAccent,),
        //                   suffixText: 'Username',
        //                   focusedBorder: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(20),
        //                       borderSide: BorderSide(
        //                         color: Colors.blueAccent,
        //                       )
        //                   ),
        //                   border: OutlineInputBorder(
        //                     borderRadius: BorderRadius.circular(20),
        //                     borderSide: BorderSide(
        //                       color: Colors.lightGreenAccent,
        //                     )
        //                   )
        //                 ),
        //               ),
        //             ),
        //
        //
        //             Padding(
        //               padding: const EdgeInsets.all(10),
        //               child: TextField(
        //                 // enabled: false,
        //                 decoration: InputDecoration(
        //                   suffixText: 'Password',
        //                     suffixIcon: IconButton(
        //                       icon: Icon(Icons.remove_red_eye),
        //                       onPressed: (){},
        //                     ),
        //                     // enabledBorder: OutlineInputBorder(
        //                     //     borderRadius: BorderRadius.circular(20),
        //                     //     borderSide: BorderSide(
        //                     //       color: Colors.deepPurple ,width: 5,
        //                     //     )
        //                     // ),
        //                     focusedBorder: OutlineInputBorder(
        //                         borderRadius: BorderRadius.circular(20),
        //                         borderSide: BorderSide(
        //                           color: Colors.pinkAccent,width: 5,
        //                         )
        //                     ),
        //                     border: OutlineInputBorder(
        //                         borderRadius: BorderRadius.circular(20),
        //                         borderSide: BorderSide(
        //                           color: Colors.red,
        //                         )
        //                     )
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     )
        // )

        //  ///////////////////////////////////////////////////////////////////



        //  ///////////////////////////////////////////////////////////////////

        //ListView Phone App
        // ListView.builder(itemBuilder: (context , index) {
        //       return Row(
        //         children: [
        //           Container(
        //             width: 150,
        //             height: 150,
        //             child: CircleAvatar(
        //               minRadius: 50,
        //               backgroundImage: AssetImage('assets/images/$index.png'),
        //             ),
        //           ),
        //
        //           Expanded(
        //             flex: 5,
        //               child:
        //               Text(contactNames[index] , style: TextStyle(fontFamily: 'MainFont'),
        //               )),
        //
        //           Expanded(
        //             flex: 2,
        //               child: Text(contactNumber[index] , style: TextStyle(fontWeight: FontWeight.w500),
        //               )),
        //         ],
        //       );
        // }, itemCount: contactNumber.length,
        //     itemExtent: 100,
        // ),



        //  ///////////////////////////////////////////////////////////////////


        //  ///////////////////////////////////////////////////////////////////
        // ListView.builder(itemBuilder:(context, index) {
        //
        //
        //
        //   return Padding(
        //     padding: const EdgeInsets.all(15),
        //     child: ListTile(
        //       leading: Container(
        //         child: CircleAvatar(
        //           backgroundImage: AssetImage('assets/images/0.png'),
        //         ),
        //       ),
        //       title: Text(contactNames[index] , style: TextStyle(fontFamily: 'MainFont'),),
        //       subtitle: Text(contactNumber[index]),
        //       trailing: Icon(Icons.add),
        //     ),
        //   );
        // },
        //   itemCount: contactNumber.length,
        // )


        //  ///////////////////////////////////////////////////////////////////

        //  ///////////////////////////////////////////////////////////////////
        //  Dunamic List ListView.builder

        // ListView.separated(itemBuilder: (context, index) {
        //   return Text(names[index] + names[index+1] , style: TextStyle(fontSize: 50),);
        //   },itemCount: 2,
        //   separatorBuilder: (context, index) {
        //     return Divider(height: 100, thickness: 2,);
        //   },
        // )


        //  ///////////////////////////////////////////////////////////////////

        //  ///////////////////////////////////////////////////////////////////
        //  ListView for Static Data
        // ListView(
        //   children: [
        //     // Text('hello'),
        //     TextButton(onPressed: (){}, child: Text('1' , style: TextStyle(fontSize: 50 , fontWeight: FontWeight.w900),)),
        //     TextButton(onPressed: (){}, child: Text('2' , style: TextStyle(fontSize: 50 , fontWeight: FontWeight.w900),)),
        //     TextButton(onPressed: (){}, child: Text('3' , style: TextStyle(fontSize: 50 , fontWeight: FontWeight.w900),)),
        //     TextButton(onPressed: (){}, child: Text('4' , style: TextStyle(fontSize: 50 , fontWeight: FontWeight.w900),)),
        //     TextButton(onPressed: (){}, child: Text('5' , style: TextStyle(fontSize: 50 , fontWeight: FontWeight.w900),)),
        //   ],
        // ),


        //  ///////////////////////////////////////////////////////////////////

        //  ///////////////////////////////////////////////////////////////////
        //  Scroll View
        //
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: SingleChildScrollView(
        //     child: Column(
        //       children: [
        //         SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: Row(
        //             children: [
        //               Container(
        //                 margin: EdgeInsets.only(right: 10),
        //                 width: 200,
        //                 height: 200,
        //                 color: Colors.amberAccent,
        //               ),
        //               Container(
        //                 margin: EdgeInsets.only(right: 10),
        //                 width: 200,
        //                 height: 200,
        //                 color: Colors.black26,
        //               ),
        //               Container(
        //                 margin: EdgeInsets.only(right: 10),
        //                 width: 200,
        //                 height: 200,
        //                 color: Colors.deepOrange,
        //               ),
        //             ],
        //           ),
        //         ),
        //           Container(
        //             // margin: EdgeInsets.only(bottom: 10),
        //             margin: EdgeInsets.all(10),
        //             height: 200,
        //             color: Colors.amberAccent,
        //           ),
        //           Container(
        //             margin: EdgeInsets.only(bottom: 10),
        //             height: 200,
        //             color: Colors.blue,
        //           ),
        //           Container(
        //             margin: EdgeInsets.only(bottom: 10),
        //             height: 200,
        //             color: Colors.deepOrangeAccent,
        //           ),
        //           Container(
        //             margin: EdgeInsets.only(bottom: 10),
        //             height: 200,
        //             color: Colors.lightGreenAccent,
        //           ),
        //           Container(
        //             margin: EdgeInsets.only(bottom: 10),
        //             height: 200,
        //             color: Colors.black,
        //           ),
        //           Container(
        //             margin: EdgeInsets.only(bottom: 10),
        //             height: 200,
        //             color: Colors.black26,
        //           ),
        //           Container(
        //             margin: EdgeInsets.only(bottom: 10),
        //             height: 200,
        //             color: Colors.lightGreenAccent,
        //           ),
        //
        //       ],
        //     ),
        //   ),
        // ),

        //  ///////////////////////////////////////////////////////////////////

        //  ///////////////////////////////////////////////////////////////////
        //  INKWELL WIDGET
        //
        // Center(
        //   child: InkWell(
        //     onTap: () {
        //       print("container was tapped");
        //     },
        //     onLongPress: (){
        //       print("container was long tapped");
        //     },
        //     child: Container(
        //       height: 110,
        //       width: 110,
        //       color: Colors.lightBlueAccent,
        //       child: Center(child: InkWell(
        //           onTap: (){
        //             print("Text was clicked");
        //           },
        //           child: Text("Click ME" , style: TextStyle(fontSize: 20),))),
        //     ),
        //   ),
        // ),

        //  ///////////////////////////////////////////////////////////////////

        //  ///////////////////////////////////////////////////////////////////
        //    PROJECT WITH ROWS AND COLUMNS
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Center(child: Text('Hello' , style: TextStyle(fontSize: 30),)),
        //
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: [
        //         Text('P1' , style: TextStyle(fontSize: 30),),
        //         Text('P2' , style: TextStyle(fontSize: 30),),
        //         Text('P3' , style: TextStyle(fontSize: 30),),
        //         Text('P4' , style: TextStyle(fontSize: 30),),
        //       ],
        //     ),
        //
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Text('A' , style: TextStyle(fontSize: 30),),
        //         Text('B' , style: TextStyle(fontSize: 30),),
        //         Text('C' , style: TextStyle(fontSize: 30),),
        //         Text('D' , style: TextStyle(fontSize: 30),),
        //         Text('E' , style: TextStyle(fontSize: 30),),
        //         Text('F' , style: TextStyle(fontSize: 30),),
        //         Text('G' , style: TextStyle(fontSize: 30),),
        //         Text('H' , style: TextStyle(fontSize: 30),),
        //
        //       ],
        //     ),
        //
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Container(child: ElevatedButton(onPressed: (){}, child: Text('Break 1' , style: TextStyle(fontSize: 30),),)),
        //         Container(child: ElevatedButton(onPressed: (){}, child: Text('Break 2' , style: TextStyle(fontSize: 30),),)),
        //
        //         // Text('Break 2' , style: TextStyle(fontSize: 30),),
        //       ],
        //     ),
        //
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Text('P5' , style: TextStyle(fontSize: 30), ),
        //
        //         Column(
        //           children: [
        //             Text('H' , style: TextStyle(fontSize: 30), ),
        //             Text('A' , style: TextStyle(fontSize: 30), ),
        //           ],
        //         ),
        //
        //         Text('P6' , style: TextStyle(fontSize: 30), ),
        //
        //         Column(
        //             children: [
        //               Text('H' , style: TextStyle(fontSize: 30), ),
        //               Text('A' , style: TextStyle(fontSize: 30), ),
        //             ],
        //         ),
        //       ],
        //     ),
        //
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Column(
        //           children: [
        //             Text('A1' , style: TextStyle(fontSize: 30),),
        //             Text('B1' , style: TextStyle(fontSize: 30),),
        //           ],
        //         ),
        //         Column(
        //           children: [
        //             Text('A2' , style: TextStyle(fontSize: 30),),
        //             Text('B2' , style: TextStyle(fontSize: 30),),
        //           ],
        //         ),
        //         Container(
        //           height: 100,
        //           width: 200,
        //           child: Image.asset('assets/images/ktmLogo.png'),
        //         ),
        //
        //       ],
        //     ),
        //
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Column(
        //           children: [
        //             Text('C1' , style: TextStyle(fontSize: 30),),
        //             Text('D1' , style: TextStyle(fontSize: 30),),
        //           ],
        //         ),
        //         Column(
        //           children: [
        //             Text('C2' , style: TextStyle(fontSize: 30),),
        //             Text('D2' , style: TextStyle(fontSize: 30),),
        //           ],
        //         ),
        //         Container(
        //           height: 100,
        //           width: 200,
        //           child: Image.asset('assets/images/rrLogo.png'),
        //         ),
        //
        //       ],
        //     ),
        //
        //     Text('Thank You' , style: TextStyle(fontSize: 50),)
        //
        //   ],
        // ),



        //  ///////////////////////////////////////////////////////////////////

        //  ///////////////////////////////////////////////////////////////////

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //
        //   children: [
        //     Column(
        //       children: [
        //         Text('c1' , style: TextStyle(fontSize: 30),),
        //         Text('c2' , style: TextStyle(fontSize: 30),),
        // ]
        //
        //     ),
        //     Text('r1' , style: TextStyle(fontSize: 30),),
        //     Text('r2' , style: TextStyle(fontSize: 30),),
        //     Text('r3' , style: TextStyle(fontSize: 30),),
        //     Text('r4' , style: TextStyle(fontSize: 30),),
        //     Text('r5' , style: TextStyle(fontSize: 30),),
        //   ],
        // ),

        //  ///////////////////////////////////////////////////////////////////



        //  ///////////////////////////////////////////////////////////////////
        // Center(
        //     child: Container(
        //         width: 500,
        //         height: 300,
        //         child: Image.asset('assets/images/ktmLogo.png')
        //     )
        // ),


        //  ///////////////////////////////////////////////////////////////////



        //  ///////////////////////////////////////////////////////////////////
        // ElevatedButton(
        //   child: Text('Click Me!'),
        //   onPressed: (){
        //     print('Button was tapped');
        //   },
        //   onLongPress: (){
        //     print('Button was long pressed');
        //   },
        // ),
        //  ///////////////////////////////////////////////////////////////////

        //  ///////////////////////////////////////////////////////////////////

        // Center(
        //   child: Container(
        //     child: Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.lightGreenAccent,
        //
        //       child: Center(
        //         // child: Text('data'),
        //         child: Text('Hello Bois' , style: TextStyle(
        //             fontSize: 20,
        //           color: Colors.blue,
        //           fontWeight: FontWeight.w800,
        //           backgroundColor: Colors.amberAccent,
        //         ),),
        //       ),
        //       // child:Center(
        //           // child: Text('Hello Bois whats upp' , style: TextStyle(fontSize: 25),) ,
        //       // ),
        //     ),
        //   ),
        // ),
        //  ///////////////////////////////////////////////////////////////////


