import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget{
  const MenuPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return menuPageState();
  }
}
class menuPageState extends State<MenuPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Theme.of(context).primaryColor,
       title: Text("Menu",style: TextStyle(color: Theme.of(context).canvasColor,fontSize: 22,fontWeight: FontWeight.w500),),
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