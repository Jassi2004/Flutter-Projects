import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 500),
                pageBuilder: (context, animation, secondaryAnimation) {
                  return ProfileDetailPage();
                },
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  const begin = 0.0;
                  const end = 1.0;
                  var tween = Tween(begin: begin, end: end);
                  var fadeAnimation = animation.drive(tween);

                  return FadeTransition(
                    opacity: fadeAnimation,
                    child: child,
                  );
                },
              ),
            );
          },
          child: Hero(
            tag: 'profilePicture',
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://feeds.abplive.com/onecms/images/uploaded-images/2022/04/24/1874b0009d0f91ce0762b193af7091a5_original.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Detail')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: 'profilePicture',
            child: CircleAvatar(
              radius: 150, // Increased size for the enlarged version
              backgroundImage: NetworkImage('https://feeds.abplive.com/onecms/images/uploaded-images/2022/04/24/1874b0009d0f91ce0762b193af7091a5_original.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget{
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
//
//   late Animation animation;
//   late AnimationController animationController;
//   late Animation colorAnimation;
//
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//     animationController = AnimationController(vsync: this , duration: Duration(seconds: 2));
//     animation = Tween(begin: 50.0 , end: 300.0).animate(animationController);
//     colorAnimation = ColorTween(begin: Colors.black , end: Colors.amberAccent).animate(animationController);
//
//     animationController.addListener(() {
//       setState(() {
//
//       });
//     });
//
//     animationController.forward();
//
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Tween Animation'),
//       ),
//
//       body: Center(
//         child: Container(
//           width: animation.value,
//           height: animation.value,
//           decoration: BoxDecoration(
//             color: colorAnimation.value,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
// ////////////////////////////////////////////////////////////////////////////////////////////////////
//
// // FOO Animation
//
// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({super.key});
// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }
// //
// // class _MyHomePageState extends State<MyHomePage> {
// //
// //   var _width = 100.0;
// //   var _height = 200.0;
// //   Color _color = Colors.lightGreenAccent;
// //   bool flag = true;
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Animations'),
// //       ),
// //
// //       body: Center(
// //         child: Column(
// //           children: [
// //             AnimatedContainer(
// //               width: _width,
// //               height: _height,
// //               duration: Duration(seconds: 1),
// //               decoration: BoxDecoration(
// //                 color: _color,
// //                 borderRadius: BorderRadius.circular(10),
// //               ),
// //             ),
// //
// //             ElevatedButton(onPressed: (){
// //
// //               if(flag){
// //                 _width = 200.0;
// //                 _height = 100.0;
// //                 _color = Colors.lightBlue;
// //                 flag = false;
// //               }
// //               else{
// //                 _width = 100.0;
// //                 _height = 200.0;
// //                 _color = Colors.lightGreenAccent;
// //                 flag = true;
// //               }
// //
// //               setState(() {
// //
// //               });
// //
// //             }, child: Text('Animate' , style: TextStyle(fontSize: 20),))
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// //
// // }
