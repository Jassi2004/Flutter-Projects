import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_details_app/mainPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
              headline1 : TextStyle(color: Colors.black , fontSize: 20 ,fontWeight: FontWeight.w600  , fontFamily: 'MainFont2')

          )
        // style
      ),
      home: FormScreen(),
    );
  }
}


class FormScreen extends StatelessWidget{

  var Name = TextEditingController();
  var RollNo = TextEditingController();
  var PhoneNo = TextEditingController();
  var Email = TextEditingController();
  var DOB = TextEditingController();
  var Password = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Enter You Details', style: Theme.of(context).textTheme.headline1,),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      flex: 1,
                      child: Text('Name' , style: Theme.of(context).textTheme.headline1)),
                  Expanded(
                    flex: 2,
                    child: Container(
                        width: 200,
                        child: TextField(
                          controller: Name,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.lightGreen,
                                  width: 2,
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.indigoAccent,
                                  width: 2,
                                )
                            ),
                            hintText: 'Enter name',
                            // border: OutlineInputBorder(
                            //     borderRadius: BorderRadius.circular(15),
                            //     borderSide: BorderSide(
                            //       color: Colors.indigoAccent,
                            //       width: 2,
                            //     )
                            // )
                          ),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      flex: 1,
                      child: Text('Roll No' , style: Theme.of(context).textTheme.headline1)),
                  Expanded(
                    flex: 2,
                    child: Container(
                        width: 200,
                        child: TextField(
                          controller: RollNo,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.lightGreen,
                                  width: 2,
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.indigoAccent,
                                  width: 2,
                                )
                            ) ,
                            hintText: 'Enter Roll no.',
                          ),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      flex: 1,
                      child: Text('Phone Number' , style: Theme.of(context).textTheme.headline1)),
                  Expanded(
                    flex: 2,
                    child: Container(
                        width: 200,
                        child: TextField(
                          controller: PhoneNo,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.lightGreen,
                                    width: 2,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.indigoAccent,
                                    width: 2,
                                  )
                              ) ,
                              suffixIcon: Icon(Icons.phone),
                              hintText: 'Enter Phone Number'
                          ),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      flex: 1,
                      child: Text('E Mail' , style: Theme.of(context).textTheme.headline1)),
                  Expanded(
                    flex: 2,
                    child: Container(
                        width: 200,
                        child: TextField(
                          controller: Email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.lightGreen,
                                    width: 2,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.indigoAccent,
                                    width: 2,
                                  )
                              ) ,
                              suffixIcon: Icon(Icons.mail),
                              hintText: 'Enter Email ID'
                          ),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      flex: 1,
                      child: Text('Date Of Birth' , style: Theme.of(context).textTheme.headline1)),
                  Expanded(
                    flex: 2,
                    child: Container(
                        width: 200,
                        child: TextField(
                          controller: DOB,
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.lightGreen,
                                    width: 2,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.indigoAccent,
                                    width: 2,
                                  )
                              ) ,
                              suffixIcon: Icon(Icons.calendar_month),
                              hintText: 'DD/MM/YYYY'
                          ),
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      flex: 1,
                      child: Text('Password' , style: Theme.of(context).textTheme.headline1)),
                  Expanded(
                    flex: 2,
                    child: Container(
                        width: 200,
                        child: TextField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          controller: Password,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.lightGreen,
                                    width: 2,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.indigoAccent,
                                    width: 2,
                                  )
                              ) ,
                              hintText: 'Enter Password',
                              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye))
                          ),
                        )),
                  )
                ],
              ),
            ),

            ElevatedButton(onPressed: (){
              String uName = Name.text.toString();
              String uRollNo = RollNo.text.toString();
              String uPhoneNo = PhoneNo.text.toString();
              String uEmail = Email.text.toString();
              String uDOB = DOB.text.toString();
              String uPassword = Password.text.toString();

              print(
                  'Name: $uName \n'
                      'Roll no: $uRollNo \n'
                      'PhoneNo: $uPhoneNo\n'
                      'Email: $uEmail\n'
                      'DOB: $uDOB\n'
                      'Password: $uPassword'
              );

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MainPage(
                    Name.text.toString(),
                    RollNo.text.toString(),
                    PhoneNo.text.toString(),
                    Email.text.toString(),
                    DOB.text.toString(),
                    Password.text.toString()
                );
              },));
            }, child: Text('SUBMIT' , style: Theme.of(context).textTheme.headline1,))

          ],
        ),
      ),
    );
  }

}
