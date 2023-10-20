import 'package:flutter/material.dart';
import 'package:demo/Projects.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '/About.dart';
import 'package:demo/Home.dart';
import '/Utili/Routes.dart';


class About  extends StatelessWidget {
  // const ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


         appBar: AppBar(
         backgroundColor:Colors.blue.shade300,
    ),



        body: Container(

           decoration: BoxDecoration(
             gradient: LinearGradient(colors:
             [Color(0xff48c6ef),Color(0xffb6f86d6)],
               begin: Alignment.topLeft,
               end: Alignment.bottomRight,
              ),

             ),


          child:

             Column(
                  children: <Widget>[
                  SizedBox(
                  width: 400.0,
                  child: TextLiquidFill(
                  text: 'ABOUT',

                  waveColor: Colors.black,
                  boxBackgroundColor: Colors.white,
                  textStyle: TextStyle(
                  fontSize: 70.0,
                  fontWeight: FontWeight.bold,
                ),
                  boxHeight: 80.0,
                 ),
                  ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10,),
                      child: Text("I am currently a 3rd Semester   student of Information Technology I am quite passionate about exploring new things I am familiar with c,html and css currently learning flutter ",style: TextStyle(
                        color: Colors.white,
                        fontWeight:FontWeight.bold,
                        fontSize: 28,

                      ),),
                    ),

                    SizedBox(height: 20,),
                    SizedBox(
                      width: 400.0,
                      child: TextLiquidFill(
                        text: 'SKILLS',

                        waveColor: Colors.black,
                        boxBackgroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 65.0,
                          fontWeight: FontWeight.bold,
                        ),
                        boxHeight: 90.0,
                      ),
                    ),

                    SizedBox(
                      height:30
                    ),
                    Column(
                      children:<Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:20),
                          child: Row(
                               children: <Widget>[
                                Image.asset('lib/images/html.png',
                                 height:90, width:80,),
                                 SizedBox(width:40),
                                 Image.asset('lib/images/c.png',
                                 height:90, width:80,),
                                 SizedBox(width:40),

                                 Image.asset('lib/images/css.png',
                                 height:90, width:80,),

  ],

                      ),
                        )
                      ],
                      ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(255, 0, 0, 300),
                        padding: EdgeInsets.only(top:10,left:30,right:30,bottom: 20),
                      ),


                      onPressed: () {

                        Navigator.pushNamed(context, MyRoutes.ProjectRoutes);
                      },
                      child: Text('Projects',style: TextStyle(
                        fontSize: 20,
                      ),),
                    ),
                  ],
            ),

         
        ),


    );
  }
}




