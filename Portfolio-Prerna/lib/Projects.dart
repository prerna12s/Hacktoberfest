import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:demo/Projects.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '/About.dart';
import 'package:demo/Home.dart';

class Projects  extends StatelessWidget {
  // const ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
     body:   SingleChildScrollView(
       child: Column(
         children: <Widget>[
           SizedBox(
             width: 400.0,
             child: TextLiquidFill(
               /*PROJECTS TEXT*/
               text: 'PROJECTS',

               waveColor: Color.fromRGBO(1, 1, 112, 300),
               boxBackgroundColor: Colors.white,
               textStyle: TextStyle(
                 fontSize: 70.0,
                 fontWeight: FontWeight.bold,
               ),
               boxHeight: 80.0,
             ),
           ),
           //DESCRIPTION
           Padding(
             padding: const EdgeInsets.only(left:8.0),
             child: Text("With the kowledge of html and some Css I created some beautiful Web pages",style:TextStyle(
               color:Colors.deepPurple,
               fontSize:20,
             ),),
           ),

           SizedBox(height:20),
           //TEXT
           Text('Pizza Order Website Home Page',style: TextStyle(
             fontSize: 20,
             color:Colors.black,
             fontWeight: FontWeight.bold,
           ),),
           //HOME PAGE PIZZA
           Container(
             width: 360.0,
             height: 200.0,
            // decoration: BoxDecoration(
            //   color: Colors.white,
            // ),
             child: Image.asset(
               'lib/images/pizzaa.png',
               fit: BoxFit.cover,
             ),
           ),

           SizedBox(
             height:10,
           ),
           //TEXT
           Text('Travel Website Home Page',style: TextStyle(
             fontSize: 20,
             color:Colors.black,
             fontWeight: FontWeight.bold,
           ),),
           //HOME PAGE TRAVEL WEB PAGE
           Container(
             width: 360.0,
             height: 200.0,
             decoration: BoxDecoration(
               color: Colors.white,
             ),
             child: Image.asset(
               'lib/images/travel.png',
               fit: BoxFit.cover,
             ),
           )



         ],
       ),
     )
    );
  }
}



