import 'dart:convert';

import 'package:flutter/material.dart';
import 'colors.dart' as color;
class VideoInfo extends StatefulWidget {
  const VideoInfo({super.key});

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List videoInfo=[];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/videoinfo.json").then((value){
      videoInfo= json.decode(value);
    });
  }
  @override
  void initState(){
    super.initState();
    _initData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
          children: [
           
             Container(
          decoration: BoxDecoration(
           
            gradient: LinearGradient(colors:[
               color.AppColor.gradientFirst.withOpacity(0.9),
                       color.AppColor.gradientSecond,
            ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
            )
          ),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 70,left:30,right:30),
                width:MediaQuery.of(context).size.width,
                height: 300,
               
                child: Column(children: [
                  Row(children: [
                    Icon(Icons.arrow_back_ios,size: 20,
                    color: color.AppColor.secondPageIconColor,
                    ), 
                    Expanded(child: Container()),
                    Icon(Icons.info_outline,size: 20,
                    color: color.AppColor.secondPageIconColor,
                    )
                  ],),
                  SizedBox(height: 30,),
                   Text(
                        'Disease Training',
                        style: TextStyle(
                          fontSize: 25,
                          color: color.AppColor.secondPageTitleColor,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'and Video explanation',
                        style: TextStyle(
                          fontSize: 25,
                          color: color.AppColor.secondPageTitleColor,
                        ),
                        
      
                      ),
                     
                      Row(children: [
                       Container(
                        width:90,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            color.AppColor.secondPageContainerGradient1stColor,
                            color.AppColor.secondPageContainerGradient2ndColor,
                          ],
                          begin: Alignment.bottomLeft,
                          end:Alignment.topRight,
                          )
                        ),
                       child: Row(
                        children: [
                          Icon(Icons.timer,size:20,color:color.AppColor.secondPageIconColor)
                        ],
                       ),
                       ) 
                      ],),
                   
                ]),
              ),
             
            ],
          ),
          
        ),
         Container(
             
              width: 400,
              height: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                 color: Colors.white,
                 
              ),
              
               child: Column(children: [
                Expanded(child: ListView.builder(
                  itemCount: videoInfo.length,
                  itemBuilder: (_, int index){
                  return GestureDetector(
                    onTap:(){
                      debugPrint(index.toString());
                    },
                    child: Container(
                      color:Colors.redAccent,
                      height:305,
                      width:200,
                      child: Column(
                        children: [

                        ],
                      ),
                    )
                  );
                }))
               ]),
            ), 
      
          ],
        ),
        
      )
    );
  }
}