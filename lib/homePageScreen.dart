import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget{
  const HomePageScreen({super.key});
  @override
  State<StatefulWidget> createState() {
 return HomePageScreenState();
  }
}
class HomePageScreenState extends State<HomePageScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       color: Theme.of(context).primaryColor,
       child: Column(
         children: [
           SizedBox(
             height: 25,
           ),
           Padding(
             padding: const EdgeInsets.all(30.0),
             child: Container(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Welcome',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.normal),),
                       Text('@username',style: TextStyle(color: Colors.white,fontSize:28 ,fontWeight: FontWeight.w500),)
                     ],
                   ),
                   Container(
                       height: 45,
                       width: 116,
                       child: Image.asset('assets/images/img.png'))
                 ],
               ),
             ),
           ),
           Container(
             color: hexToColor('#642B88'),
             child: Padding(
               padding: const EdgeInsets.all(15.0),
               child: Container(
                 child: TextField(
                   decoration: InputDecoration(
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                         color: Colors.white,
                       ),
                       borderRadius: BorderRadius.circular(27),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(27),
                       borderSide: BorderSide(color: Theme.of(context).primaryColor,
                       width: 2)
                     )
                   ),
                 ),
               ),
             ),
           )
         ],
       ),
     ),
    );
  }
}
Color hexToColor(String hexColor) {
  hexColor = hexColor.replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF$hexColor"; // Add alpha value if not provided
  }
  return Color(int.parse("0x$hexColor"));
}