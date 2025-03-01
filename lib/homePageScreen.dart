import 'package:flutter/material.dart';
import 'package:iapply/loginPage.dart';

class HomePageScreen extends StatefulWidget{
  const HomePageScreen({super.key});
  @override
  State<StatefulWidget> createState() {
 return HomePageScreenState();
  }
}
class HomePageScreenState extends State<HomePageScreen>{
  int myIndex =0;
  FocusNode focusNode = FocusNode();

  @override
  void dispose(){
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: InkWell(
       onTap: (){
         FocusScope.of(context).requestFocus(FocusNode());
       },
       child: Container(
         color: Theme.of(context).primaryColor,
         child: SafeArea(
           child: SingleChildScrollView(
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 30.0,bottom: 30 ,left: 25,right: 28 ),
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
                       SizedBox(
                           height: 45,
                           width: 116,
                           child: Image.asset('assets/images/img.png'))
                     ],
                   ),
                 ),
                 Container(
                   color: hexToColor("7E6BA3"),
                   child: Padding(
                     padding: const EdgeInsets.only(left:25,right: 25,bottom: 10,top: 10 ),
                     child: SizedBox(
                       child: TextFormField(
                         decoration: InputDecoration(
                           // contentPadding: EdgeInsets.symmetric(vertical: 10),
                           enabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(
                               color: Colors.white,
                               width: 3
                             ),
                             borderRadius: BorderRadius.circular(27),
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(27),
                             borderSide: BorderSide(color: Theme.of(context).primaryColor,
                               width: 1
                             )
                           ),
                           hintText: "Search",
                           hintStyle: TextStyle(color: Colors.grey,fontSize: 16,),
                           fillColor: Colors.white,
                           filled: true,
                           suffixIcon: IconButton(onPressed: (){
                           }, icon: Icon(Icons.search)),
                           iconColor: Theme.of(context).primaryColor

                         ),
                       ),
                     ),
                   ),
                 ),
                 Column(
                   children: [
                    Container(height: 25,
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
                     Container(
                         color: Theme.of(context).canvasColor,
                       width: double.infinity,
                       child: Padding(
                         padding: const EdgeInsets.only(top: 20,bottom: 18),
                         child: SingleChildScrollView(
                           scrollDirection: Axis.horizontal,
                           child: Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 8,top: 10, bottom: 10,left: 28),
                                 child: SizedBox(
                                   width: 90,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Container(
                                         height: 90,
                                         width: 90,
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(16),
                                             color: Colors.blueAccent
                                         ),
                                       ),
                                       const SizedBox(height: 15),
                                       SizedBox(
                                         child: Align(
                                           alignment: Alignment.center,
                                           child: Text('Consultancy Name',style: TextStyle(color: Theme.of(context).primaryColor,),
                                             overflow: TextOverflow.ellipsis,
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 8,top: 10, bottom: 10,left: 28),
                                 child: SizedBox(
                                   width: 90,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Container(
                                         height: 90,
                                         width: 90,
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(16),
                                             color: Colors.blueAccent
                                         ),
                                       ),
                                       const SizedBox(height: 15),
                                       SizedBox(
                                         // height:20,
                                         child: Align(
                                           alignment: Alignment.center,
                                           child: Text('Consultancy Name',style: TextStyle(color: Theme.of(context).primaryColor,),
                                             overflow: TextOverflow.ellipsis,
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 8,top: 10, bottom: 10,left: 28),
                                 child: SizedBox(
                                   width: 90,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Container(
                                         height: 90,
                                         width: 90,
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(16),
                                             color: Colors.blueAccent
                                         ),
                                       ),
                                       const SizedBox(height: 15),
                                       SizedBox(
                                         // height:20,
                                         child: Align(
                                           alignment: Alignment.center,
                                           child: Text('Consultancy Name',style: TextStyle(color: Theme.of(context).primaryColor,),
                                             overflow: TextOverflow.ellipsis,
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 8,top: 10, bottom: 10,left: 28),
                                 child: SizedBox(
                                   width: 90,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Container(
                                         height: 90,
                                         width: 90,
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(16),
                                             color: Colors.blueAccent
                                         ),
                                       ),
                                       const SizedBox(height: 15),
                                       SizedBox(
                                         // height:20,
                                         child: Align(
                                           alignment: Alignment.center,
                                           child: Text('Consultancy Name',style: TextStyle(color: Theme.of(context).primaryColor,),
                                             overflow: TextOverflow.ellipsis,
                                           ),
                                         ),
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
                 Column(
                   children: [
                     Container(
                       color: Theme.of(context).canvasColor,),
                     Container(
                       color: Colors.white,
                       child: Padding(
                         padding: const EdgeInsets.only(left: 25,right: 10),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text('Countries',style: TextStyle(color: Theme.of(context).primaryColor,fontSize: 18,fontWeight: FontWeight.w500),),
                             TextButton(onPressed: (){
                               // something
                             }, child: Text('More',style:TextStyle(color: hexToColor('40D900')) ,))
                           ],
                         ),
                       ),
                     ),
                     Container(
                       color: Theme.of(context).canvasColor,
                       width: double.infinity,
                       child: Padding(
                         padding: const EdgeInsets.only(top: 20,bottom: 18),
                         child: SingleChildScrollView(
                           scrollDirection: Axis.horizontal,
                           child: Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(right: 8,top: 10, bottom: 10,left: 28),
                                 child: SizedBox(
                                   width: 90,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Container(
                                         height: 90,
                                         width: 90,
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(16),
                                             color: Colors.blueAccent
                                         ),
                                       ),
                                       const SizedBox(height: 15),
                                       SizedBox(
                                         // height:20,
                                         child: Align(
                                           alignment: Alignment.center,
                                           child: Text('Consultancy Name',style: TextStyle(color: Theme.of(context).primaryColor,),
                                             overflow: TextOverflow.ellipsis,
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 8,top: 10, bottom: 10,left: 28),
                                 child: SizedBox(
                                   width: 90,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Container(
                                         height: 90,
                                         width: 90,
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(16),
                                             color: Colors.blueAccent
                                         ),
                                       ),
                                       const SizedBox(height: 15),
                                       SizedBox(
                                         // height:20,
                                         child: Align(
                                           alignment: Alignment.center,
                                           child: Text('Consultancy Name',style: TextStyle(color: Theme.of(context).primaryColor,),
                                             overflow: TextOverflow.ellipsis,
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 8,top: 10, bottom: 10,left: 28),
                                 child: SizedBox(
                                   width: 90,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Container(
                                         height: 90,
                                         width: 90,
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(16),
                                             color: Colors.blueAccent
                                         ),
                                       ),
                                       const SizedBox(height: 15),
                                       SizedBox(
                                         // height:20,
                                         child: Align(
                                           alignment: Alignment.center,
                                           child: Text('Consultancy Name',style: TextStyle(color: Theme.of(context).primaryColor,),
                                             overflow: TextOverflow.ellipsis,
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 8,top: 10, bottom: 10,left: 28),
                                 child: SizedBox(
                                   width: 90,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Container(
                                         height: 90,
                                         width: 90,
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(16),
                                             color: Colors.blueAccent
                                         ),
                                       ),
                                       const SizedBox(height: 15),
                                       SizedBox(
                                         // height:20,
                                         child: Align(
                                           alignment: Alignment.center,
                                           child: Text('Consultancy Name',style: TextStyle(color: Theme.of(context).primaryColor,),
                                             overflow: TextOverflow.ellipsis,
                                           ),
                                         ),
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
                 Container(
                   decoration: BoxDecoration(
                     color: Theme.of(context).canvasColor,
                   ),
                 )
               ],
             ),
           ),
         ),
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