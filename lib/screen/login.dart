import 'package:disease_app/screen/front.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';

import 'constant.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    String username = "sangari";
    String password = "San123@";
    void validate() {
      if (formKey.currentState != null &&
          formKey.currentState!.validate() &&
          nameController.text == username &&
          passwordController.text == password) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const front()),
        );
        print('ok');
      } else {
        print('error');
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(214, 0, 135, 245),
        toolbarHeight: 10,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 733,
                //color:Colors.white,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(35),
                    )),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 80.0, left: 140),
                      child: Row(
                        children: [
                          Text(
                            'EasyDisease',
                            style: TextStyle(
                                color: Color.fromARGB(255, 69, 31, 67),
                                fontSize: 25,
                                fontFamily: 'Lora',
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: const EdgeInsets.only(top: 50.0, left: 175),
                      child: Row(
                        children: const [
                          Text(
                            'sign in',
                            style: TextStyle(
                                color: Color.fromARGB(255, 69, 31, 67),
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30.0, left: 20, right: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              controller: nameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter the user name';
                                }
                                // return null;
                              },
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                labelText: 'User Name',
                                labelStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Lora"),
                                //keyboardType: TextInputType.namecontroller,
                                prefixIcon: Icon(
                                  Icons.person_outlined,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10.0, left: 20, right: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              controller: passwordController,

                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter the password';
                                }
                                // return null;
                              },
                              obscureText: true,
                              //controller: nameController,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Lora"),
                                //keyboardType: TextInputType.namecontroller,
                                prefixIcon:
                                    Icon(Icons.lock, color: Colors.blue),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Column(
                        children: [
                          Container(
                            width: 300,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(
                                  214, 0, 135, 245), // Background color
                            ),
                            child: InkWell(
                              onTap: () {
                                validate();
                              },
                              child: const Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 100),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text('New User?', style: TextStyle(fontSize: 16))
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                ' Create Account',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding:  EdgeInsets.only(top: 20.0, left: 110),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              // IconButton(
                              //     onPressed: () {},
                              //     icon: const Icon(
                              //       FlutterIcons.google_faw5d,
                              //       size: 30,

                              //     )),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                // IconButton(
                                //     onPressed: () {},
                                //     icon: const Icon(
                                //       FlutterIcons.facebook_with_circle_ent,
                                //       //color: Color.fromARGB(255, 27, 107, 228),
                                //       size: 35,
                                //       color:Color.fromARGB(255, 33, 96, 243),

                                //     )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                // IconButton(
                                //     onPressed: () {},
                                //     icon: const Icon(
                                //       FlutterIcons.twitter_circle_mco,
                                //       color: Colors.blue,
                                //       size: 40,
                                //     )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
