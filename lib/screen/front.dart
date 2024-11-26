import 'dart:convert';

import 'package:flutter/material.dart';

import 'colors.dart' as color;
import 'video_info.dart';

class front extends StatefulWidget {
  const front({super.key});

  @override
  State<front> createState() => _frontState();
}

class _frontState extends State<front> {
  List info = [];
  _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      final jsonData = json.decode(value);
      setState(() {
        info = jsonData.map((item) => videoInfo.fromJson(item)).toList();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
          child: Padding(
        padding: const EdgeInsets.only(top: 70.0, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'About Video',
                  style: TextStyle(
                      fontSize: 30,
                      color: color.AppColor.homePageTitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'About Video',
                  style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.homePageSubTitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Text(
                  'Details',
                  style: TextStyle(
                    fontSize: 20,
                    color: color.AppColor.homePageDetail,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => VideoInfo()));
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: color.AppColor.homePageIcons,
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      color.AppColor.gradientFirst.withOpacity(0.8),
                      color.AppColor.gradientSecond.withOpacity(0.9),
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(80)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(5, 10),
                        blurRadius: 20,
                        color: color.AppColor.gradientSecond.withOpacity(0.2))
                  ]),
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next video',
                      style: TextStyle(
                        fontSize: 16,
                        color: color.AppColor.homePageContainerTextSmallse,
                      ),
                    ),
                    Text(
                      'Disease Training',
                      style: TextStyle(
                        fontSize: 25,
                        color: color.AppColor.homePageContainerTextSmallse,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'and Video explanation',
                      style: TextStyle(
                        fontSize: 25,
                        color: color.AppColor.homePageContainerTextSmallse,
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer,
                              size: 20,
                              color:
                                  color.AppColor.homePageContainerTextSmallse,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '60min',
                              style: TextStyle(
                                fontSize: 14,
                                color:
                                    color.AppColor.homePageContainerTextSmallse,
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                                BoxShadow(
                                    color: color.AppColor.gradientFirst,
                                    blurRadius: 10,
                                    offset: Offset(4, 8))
                              ]),
                          child: const Icon(
                            Icons.play_circle_fill,
                            color: Colors.white,
                            size: 40,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 30),
                    height: 120,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      //  color:Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      // image: DecorationImage(image: AssetImage(
                      //   'assets/image/border.png'
                      // ),
                      // fit: BoxFit.fill
                      // ),
                      // boxShadow: [
                      //   BoxShadow(
                      //     blurRadius: 10,
                      //     offset: Offset(-1, -5),
                      //     color:color.AppColor.gradientSecond.withOpacity(0.3)
                      //   )
                      // ]
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(
                      right: 260,
                      bottom: 30,
                    ),
                    decoration: BoxDecoration(
                      //  color:Colors.redAccent.withOpacity(0.2),
                      // border: Border.all(color:Colors.black),
                      //  color:Colors.red,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/image/doctor.png'),
                        // fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Container(
                      width: double.maxFinite,
                      height: 100,
                      margin: const EdgeInsets.only(left: 80, top: 60),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Text('You are doing great\n',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: color.AppColor.homePageDetail,
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: "Keep it up",
                                  style: TextStyle(
                                      color: color.AppColor.homePagePlanColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                  children: const [
                                TextSpan(text: "stick to your plan")
                              ]))
                        ],
                      ))
                ],
              ),
            ),
            Row(
              children: [
                Text('Area of focus',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: color.AppColor.homePageTitle))
              ],
            ),
            Expanded(
              child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: MediaQuery.removePadding(
                    removeTop: true,
                    context: context,
                    child: ListView.builder(
                      itemCount: (info.length / 2)
                          .ceil(), // Use ceil to handle odd-length lists
                      itemBuilder: (_, i) {
                        int a = 2 * i;
                        int b = 2 * i + 1;

                        // Check if 'b' is within the bounds of the list
                        bool isBValid = b < info.length;

                        return Row(
                          children: [
                            Container(
                              margin:const EdgeInsets.only(
                                  left: 30, bottom: 15, top: 15),
                              height: 220, // Increase the height
                              width: (MediaQuery.of(context).size.width - 120) /
                                  2, // Increase the width

                              padding:const EdgeInsets.only(bottom: 1),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(info[a].img),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    offset:const Offset(
                                      5,
                                      5,
                                    ),
                                    color: color.AppColor.gradientSecond
                                        .withOpacity(0.1),
                                  ),
                                  BoxShadow(
                                    blurRadius: 3,
                                    offset:const Offset(
                                      -5,
                                      -5,
                                    ),
                                    color: color.AppColor.gradientSecond
                                        .withOpacity(0.1),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    info[a].title,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: color.AppColor.homePageDetail,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            if (isBValid)
                              Container(
                                margin:const EdgeInsets.only(
                                    left: 30, bottom: 15, top: 15),
                                height: 220, // Increase the height
                                width:
                                    (MediaQuery.of(context).size.width - 120) /
                                        2, // Increase the width

                                padding: EdgeInsets.only(bottom: 1),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(info[b].img),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      offset:const Offset(
                                        5,
                                        5,
                                      ),
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1),
                                    ),
                                    BoxShadow(
                                      blurRadius: 3,
                                      offset:const Offset(
                                        -5,
                                        -5,
                                      ),
                                      color: color.AppColor.gradientSecond
                                          .withOpacity(0.1),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      info[b].title,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: color.AppColor.homePageDetail,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        );
                      },
                    )),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class videoInfo {
  final String title;
  final String img;

  videoInfo({required this.title, required this.img});

  factory videoInfo.fromJson(Map<String, dynamic> json) {
    return videoInfo(
      title: json['title'],
      img: json['img'],
    );
  }
}
