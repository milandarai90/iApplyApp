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
       title: Text("Notification"),
     ),
   );
  }
}

