import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iapply/homePageScreen.dart';
// import 'package:iapply/homeScreen.dart';
import 'package:iapply/main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
return SplashScreenState();
  }

}
class SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3),(){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePageScreen(),));
    });

  }
  @override

  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       color: Theme.of(context).colorScheme.primary,
       child: Center(

         child: Text('iApply', style: TextStyle(
           fontSize: 65,
           color: Colors.white,
           fontWeight: FontWeight.bold
         )),
       ),
     )

   );

  }

}
