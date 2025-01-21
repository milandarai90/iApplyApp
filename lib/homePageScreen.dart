import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageScreenState();
  }

}
class HomePageScreenState extends State<HomePageScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('iApply Appbar'),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,

     body: Center(
       child: Container(
         width: 300,
           child: TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder()
             ),
           )),
     )
    );
  }

}