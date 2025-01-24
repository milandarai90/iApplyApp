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
             padding: const EdgeInsets.only(top: 30.0,bottom: 30 ,left: 25,right: 28 ),
             child: Container(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
             color: hexToColor("7E6BA3"),
             child: Padding(
               padding: const EdgeInsets.only(left:25,right: 25,bottom: 10,top: 10 ),
               child: SizedBox(
                 // width: 330,
                 child: TextField(
                   decoration: InputDecoration(
                     // contentPadding: EdgeInsets.symmetric(vertical: 10),
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                         color: Colors.grey,
                         width: 2
                       ),
                       borderRadius: BorderRadius.circular(27),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(27),
                       borderSide: BorderSide(color: Theme.of(context).primaryColor,
                       width: 2)
                     ),
                     hintText: "Search",
                     hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                     fillColor: Colors.white,
                     filled: true,
                     suffixIcon: IconButton(onPressed: (){
                     }, icon: Icon(Icons.search))
                   ),
                 ),
               ),
             ),
           ),
           Container(
             child: Column(
               children: [
                Container(height: 20,
                color: Theme.of(context).canvasColor,),
                 Container(
                   color: Colors.white,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 25,right: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('Top Consultancies',style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 18,fontWeight: FontWeight.w500),),
                         TextButton(onPressed: (){
                           // something
                         }, child: Text('More',style:TextStyle(color: hexToColor('40D900')) ,))
                       ],
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: Container(
                     child: SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                       child: Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(10.0),
                             child: Container(
                               width: 90,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     height: 90,
                                     width: 90,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(16),
                                         color: Colors.white
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 8.0),
                                     child: Text('Consultancy jbkjbjhkhkjhgjalsfkal',style: TextStyle(color: Colors.white),),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(10.0),
                             child: Container(
                               width: 90,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     height: 90,
                                     width: 90,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(16),
                                         color: Colors.white
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 8.0),
                                     child: Text('Consultancy jbkjbjhkhkjhgjalsfkal',style: TextStyle(color: Colors.white),),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(10.0),
                             child: Container(
                               width: 90,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     height: 90,
                                     width: 90,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(16),
                                         color: Colors.white
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 8.0),
                                     child: Text('Consultancy jbkjbjhkhkjhgjalsfkal',style: TextStyle(color: Colors.white),),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(10.0),
                             child: Container(
                               width: 90,
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     height: 90,
                                     width: 90,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(16),
                                         color: Colors.white
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 8.0),
                                     child: Text('Consultancy jbkjbjhkhkjhgjalsfkal',style: TextStyle(color: Colors.white),),
                                   ),
                                 ],
                               ),
                             ),
                           ),





                         ],
                       ),
                     ),
                   ),
                 )
             ],
             ),
           ),
           // SizedBox()
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