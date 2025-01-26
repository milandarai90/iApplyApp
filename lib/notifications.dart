import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget{
  const NotificationsPage({super.key});

  @override
  State<StatefulWidget> createState() {
   return notificationPageState();
  }

}
class notificationPageState extends State<NotificationsPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Notifications",style: TextStyle(color: Theme.of(context).canvasColor,fontSize:22,fontWeight: FontWeight.w500),),
       backgroundColor: Theme.of(context).primaryColor,
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

