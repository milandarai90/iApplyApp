import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iapply/loginPage.dart';



class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

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
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
    });

  }
  @override

  Widget build(BuildContext context) {
   return Scaffold(
   body: Container(
       color: Theme.of(context).primaryColor,
       child: Center(
         child: SizedBox(
           height: 250,
           width: 250,
           child: Center(
               child: Image.asset('assets/images/img.png',)

           ),
         ),
       )),

   );

  }

}
