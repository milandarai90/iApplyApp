import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyClassesPage extends StatefulWidget{
  const MyClassesPage({super.key});

  @override
  State<StatefulWidget> createState() {
   return myClassPageState();
  }
}

class myClassPageState extends State<MyClassesPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("My Classes"),
     ),
   );
  }
}
