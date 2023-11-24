import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    print("This is a init state");
  }

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
    print("Set state called");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("Widget Destroyed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Activity"),
        ),
        body:
        Column(
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {},
            ),
            Text("Kuch Nahi")
          ],
        )



    );
  }
}


//
// class _HomeState extends State<Home> {
//
//   late String temp;
//   late String temp_min;
//   late String temp_max;
//   late String temp_feel;
//
//   @override
//   void initState() {
//     super.initState();
//     print("Home initialized");
//     getData();
//   }
//   // https://api.coindesk.com/v1/bpi/currentprice.json
//   void getData() async
//   {
//     String city = "mohali";
//     Response res = await get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$city&appid=ff634b9ca0f46ab0eb528164542662ae"));
//
//     setState(() {
//
//       Map data = jsonDecode(res.body);
//       Map main = data["main"];
//       temp = main["temp"].toString();
//       temp_min = main["temp_min"].toString();
//       temp_max = main["temp_max"].toString();
//       temp_feel = main["feels_like"].toString();
//       print('$temp');
//       print('$temp_min');
//       print('$temp_max');
//       print('$temp_feel');
//
//     });
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(child: Container(
//         width: 150,
//         height: 150,
//         color: Colors.amberAccent,
//         child: Column(
//           children: [
//             Text("Current Temp : $temp"),
//             Text("Min Temp : $temp_min"),
//             Text("Max Temp : $temp_max"),
//             Text("Feel like Temp : $temp_feel"),
//           ],
//         ),
//       )
//       )
//     );
//   }
// }


