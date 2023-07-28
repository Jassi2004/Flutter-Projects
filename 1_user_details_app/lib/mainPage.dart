import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';


// void main() {
//   runApp(MainPage(
//       String as String,
//       String as String,
//       String as String,
//       String as String,
//       String as String,
//       String as String));
// }

class MainPage extends StatelessWidget{

  var Name_from_home;
  var RollNo_from_home;
  var PhoneNo_from_home;
  var Email_from_home;
  var DOB_from_home;
  var Password_from_home;

  MainPage(
      this.Name_from_home,
      this.RollNo_from_home,
      this.PhoneNo_from_home,
      this.Email_from_home,
      this.DOB_from_home,
      this.Password_from_home);
  // main(this.name_from_home);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Your details'),

          SizedBox(
            width: 100,
          ),
          Row(
            children: [
              Text('Name: ', style: Theme.of(context).textTheme.headline1,),
              Text('$Name_from_home'),
            ],
          ),
          Row(
            children: [
              Text('Roll No: ', style: Theme.of(context).textTheme.headline1,),
              Text('$RollNo_from_home'),
            ],
          ),
          Row(
            children: [
              Text('Phone No: ', style: Theme.of(context).textTheme.headline1,),
              Text('$PhoneNo_from_home'),
            ],
          ),
          Row(
            children: [
              Text('Email: ', style: Theme.of(context).textTheme.headline1,),
              Text('$Email_from_home'),
            ],
          ),
          Row(
            children: [
              Text('Password: ', style: Theme.of(context).textTheme.headline1,),
              Text('$Password_from_home'),
            ],
          ),

        ],
      ),
    );
  }

}