import 'package:disease_app/screen/login.dart';
import 'package:disease_app/screen/register.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 120.0, left: 130),
            child: Row(
              children: [
                Text(
                  'EasyDisease',
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100.0, top: 30),
            child: Row(
              children: [
                Image.asset(
                  'assets/image/front.png',
                  width: 230,
                  height: 230,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50.0, top: 30),
            child: Row(
              children: [
                Text(
                  'Easy to learn variety of disease',
                  style: TextStyle(
                      color: Color.fromARGB(255, 69, 31, 67),
                      fontSize: 23,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
           const Padding(
            padding: EdgeInsets.only(left: 110.0, top: 30),
            child: Row(
              children: [
                Text(
                  ' And learn into video',
                  style: TextStyle(
                      color: Color.fromARGB(255, 69, 31, 67),
                      fontSize: 20,
                      fontFamily: 'Lora',
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 50),
            child: Row(
              children: [
                  
                Column(
                  children: [
                    Container(
                      // color: Colors.white,
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:const Color.fromARGB(214, 0, 135, 245),
                       // color: Color.fromARGB(201, 223, 64, 251),
                      ),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const login()));
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(11.0),
                              child: Text(
                                'SIGN IN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Lora',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                    Padding(
                      padding: const EdgeInsets.only(left:20,),
                      child: Column(
                        children: [
                          Container(
                            // color: Colors.white,
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(214, 0, 135, 245),
                            ),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => register()));
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(11.0),
                                    child: Text(
                                      'SIGN UP',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'Lora',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
