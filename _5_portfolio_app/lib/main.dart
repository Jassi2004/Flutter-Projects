import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Portfolio"),
      ),
      body: Stack(
              children: [

        Image.network(
        'https://img.freepik.com/free-vector/blue-fluid-background-frame_53876-99019.jpg', // Replace with your image URL
        fit: BoxFit.cover, // Adjust this property to control how the image fills the screen
        width: double.infinity,
        height: double.infinity,
      ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [

                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("images/pic.png"),
                            radius: 60,
                          ),

                          SizedBox(
                            width: 20,
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jaskirat Singh" , style: TextStyle(fontSize: 30 , fontFamily: 'poppins'),),
                              Text("App Developer" , style: TextStyle(fontSize: 15 , fontFamily: 'poppins'),)
                            ],
                          )
                        ],
                      ),

                      Container(
                        width: 311,
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  // Padding(
                                  //   padding: const EdgeInsets.only(right: 10),
                                  //   child: Icon(Icons.school , size: 33,),
                                  // ),
                                  Icon(Icons.school , size: 33,),
                                  Text("Govt. Model Sr. Sec. School" , style: TextStyle(fontSize: 17),),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  // Padding(
                                  //   padding: const EdgeInsets.only(right: 10),
                                  //   child: Icon(Icons.book_rounded , size: 33,),
                                  // ),
                                  Icon(Icons.book_rounded , size: 33,),
                                  Text("Projects" , style: TextStyle(fontSize: 17),),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Icon(Icons.location_city , size: 33,),
                                  ),
                                  Text("Address" , style: TextStyle(fontSize: 17),),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Icon(Icons.email , size: 33,),
                                  ),
                                  Text("bedijaskirat2004@gmail.com" , style: TextStyle(fontSize: 17),),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Icon(Icons.phone , size: 33,),
                                  ),
                                  Text("78890444412" , style: TextStyle(fontSize: 17),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 40,
                      ),

                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          child: Text("Ambitious Computer Science student with a passion for technology and problem-solving. I enjoy participating in coding competitions and hackathons to hone my skills. I am seeking a role to enhance my skills and learn from experienced team members." , style: TextStyle(fontSize: 15),),
                        ),
                      ),

                      SizedBox(
                        height: 60,
                      ),

                      Text("Created By Jaskirat Singh" , style: TextStyle(fontFamily: 'poppins'),),

                    ],
                  ),
                )
              ],
            ),


        );
  }
}
