import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '/Utili/Routes.dart';
import 'package:url_launcher/url_launcher.dart';
import '/About.dart';
import 'package:demo/Home.dart';
void main() {
  runApp(MaterialApp(

    home: Home(),
    debugShowCheckedModeBanner:false,
  ));
}
class Home extends StatelessWidget {
   launchURL(String url)async{
     if(await launchUrlString(url)){
       await launchURL(url);

     }
     else{
       throw'Could not lauch $url';
     }
   }



  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        /*start*/

        body:
          Container(

              decoration:BoxDecoration(
                  gradient:LinearGradient(
                      colors:[

                        Color(0xff89f7fe),Color(0xff66a6ff),
                      ],
                    end: Alignment(0,1),

                  ),


              ),
               child: Padding(
              padding: const EdgeInsets.only(top: 15,),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      /*CIRCLE AVATAR*/

                         CircleAvatar(
                           backgroundColor: Colors.black87,
                           radius: 159,
                           child: CircleAvatar(
                            radius: 155,

                            backgroundImage: AssetImage('lib/images/sris.jpeg'),
                        ),
                         ),

                      SizedBox(height:11),
                      /* NAME */
                      Text("PRERNA TRIPATHI",style:TextStyle(
                        color: Colors.black,
                        fontSize:30,
                        fontWeight: FontWeight.bold,

                      ),
                      ),
                      SizedBox(height:10),
                      /*Animated Text*/


                       SizedBox(
                         width: 250.0,
                          child: DefaultTextStyle(
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 35.0,

                            ),
                            child: AnimatedTextKit(
                              totalRepeatCount: 1,
                              displayFullTextOnTap: true,


                              animatedTexts: [
                                TypewriterAnimatedText('Hi! I am a flutter developer',
                                    speed:const Duration(milliseconds: 90)),
                              ],

                            ),
                          ),
                        ),

                      SizedBox(
                        height:40,
                      ),
                      Column(
                        children:<Widget> [
                          Padding(
                            padding: const EdgeInsets.only(left:30),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Image.asset('lib/images/instagram.png'), // Replace with your image path
                                  onPressed:() {
                                    const url = 'https://www.instagram.com/';
                                    launchURL(url);
                                  },
                                  iconSize:65,
                                  // Your onPressed logic here

                                ),
                                SizedBox(width:30),
                                IconButton(
                                  icon: Image.asset('lib/images/github.png'), // Replace with your image path
                                  onPressed:() async{
                                 const url = ' https://github.com/prerna12s ';
                                  launchURL(url);},
                                  iconSize:65,
                                  // Your onPressed logic here

                                ),
                                SizedBox(width:30),
                                IconButton(
                                  icon: Image.asset('lib/images/linkedin.png'), // Replace with your image path
                                  onPressed:
                                      () async{
                                    const url = 'https://www.linkedin.com/in/prerna-tripathi-b54292255/';
                                    launchURL(url);},
                                  iconSize:65,
                                  // Your onPressed logic here

                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height:30),
                      ElevatedButton(

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(255, 0, 0, 300),
                              padding: EdgeInsets.only( top:10,left:30,right:30,bottom: 20),
                            ),
                            onPressed: () {

                          Navigator.pushNamed(context, MyRoutes.AboutRoutes);
                        },
                        child: Text('About me',style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                      ),





                    ],
                  ),
                ),
              ),
            ),
       ),


    );

  }
}



