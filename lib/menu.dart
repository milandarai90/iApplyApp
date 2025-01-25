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
       title: Text("Menu Page"),
     ),
   );
  }
}