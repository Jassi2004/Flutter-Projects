import 'package:flutter/material.dart';
import 'package:whatsapp_clone/spashScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'dpDetail.dart';

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
      home: const SplashScreen(),
    );
  }
}

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var arr = [
    {
      'dp':'srk',
      'name': 'srk',
      'message': 'I am the king of the world',
      'unread': '5'
    },
    {
      'dp': 'salman',
      'name': 'salman',
      'message': 'Ajj Gaadi tera bhai chalayega',
      'unread': '9'
    },
    {
      'dp': 'amir',
      'name': 'amir',
      'message': 'hmm.. chh..',
      'unread': '9'
    },
   {
      'dp': 'akki',
      'name': 'akki',
      'message': 'paisa hi paisa hoga😂',
      'unread': '9'
    },
   {
      'dp': 'ranbir',
      'name': 'ranbir',
      'message': 'Ill see you at the movies..',
      'unread': '9'
    },
   {
      'dp': 'hritik',
      'name': 'hritik',
      'message': 'mujhe kuch dikhayi nahi de raha',
      'unread': '9'
    },
   {
      'dp': 'ranvir',
      'name': 'ranvir',
      'message': 'saare kapde dhone gaye hai, aaj pant shirt pehnunga',
      'unread': '9'
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        children: [

          Container(
            height: 70,
            color: Color(0xFF1f2c34),
          ),

          Container(
            color: Color(0xFF1f2c34),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Text('Whatsapp' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w700 , color: Color(0xFF85929a)),),

                    SizedBox(
                      width: 150,
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FaIcon(FontAwesomeIcons.cameraRetro , color: Color(0xFF85929a)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FaIcon(FontAwesomeIcons.magnifyingGlass , color: Color(0xFF85929a)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FaIcon(FontAwesomeIcons.circleDot , color: Color(0xFF85929a)),
                        ),
                      ],
                    )
                  ],
                ),



              ],
            ),
          ),

          Container(
            color: Color(0xFF1f2c34),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [

                FaIcon(FontAwesomeIcons.userGroup , color: Color(0xFF85929a)),

                Row(

                  children: [

                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text('Chats' , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w700 , color: Color(0xFF01ab86)),),
                    ),
                    CircleAvatar(
                      radius: 14,
                      backgroundColor: Color(0xFF01ab86),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('36' , style: TextStyle(color: Color(0xFF1f2c34)),),
                      ),
                    )
                  ],
                ),

                Text('Status' , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w700 , color: Color(0xFF85929a)), ),

                Text('Calls' ,  style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w700 , color: Color(0xFF85929a)),)


              ],
            ),
          ),

          Container(
            width: 400,
            height: 581,
            color: Color(0xFF121b22),
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(thickness: 1, color: Color(0xFF87959e),);
              },
              itemCount: arr.length,
              itemBuilder: (context, index) {
                final item = arr[index];


                return ListTile(

                  leading: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return dpDetailScreen(item['name']?.toString());
                      },));
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/${item['name']}.png'),
                    ),
                  ),
                  
                  
                  title: Text(item['name']! , style: TextStyle(fontSize: 18 , color: Colors.white , fontWeight: FontWeight.w600),),
                  subtitle: Text(item['message']! , style: TextStyle(fontSize: 15 , color: Color(0xFF747d84) , fontWeight: FontWeight.w500),),
                  trailing: CircleAvatar(
                    radius: 14,
                      backgroundColor: Color(0xFF01ab86),
                      child: Text(item['unread']! , style: TextStyle(fontSize: 15 , color: Color(0xFF121b22) , fontWeight: FontWeight.w700),)
                  ),
                );
              },
            ),
          )

        ],
      ),
    );
  }
}

