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
       backgroundColor: Theme.of(context).primaryColor,
       title: Text("My Classes",style:TextStyle(fontWeight: FontWeight.w500,color: Theme.of(context).canvasColor,fontSize: 22),
     ),
     ),
       body: Container(
   color: Theme.of(context).canvasColor,
    child: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('Coming Soon...',style:TextStyle(color:  Theme.of(context).primaryColor, fontSize: 18))
    ],
    ),
    ),
    )
   );
  }
}
