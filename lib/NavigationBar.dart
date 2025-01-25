import 'package:flutter/material.dart';
import 'package:iapply/menu.dart';
import 'package:iapply/myClasses.dart';
import 'package:iapply/notifications.dart';

import 'homePageScreen.dart';
import 'loginPage.dart';

class NavigationBarPage extends StatefulWidget{
  const NavigationBarPage({super.key});

  @override
  State<StatefulWidget> createState() {
   return NavigationBarPageState();
  }
}
class NavigationBarPageState extends State<NavigationBarPage>{
  List<Widget>WidgetList = const[
    HomePageScreen(),
    NotificationsPage(),
    MyClassesPage(),
    MenuPage(),
  ];
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WidgetList[myIndex] ,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow:[
              BoxShadow(
                color: Colors.black54,
                blurRadius: 2,
                offset: Offset(0, -2),
              )
            ]
        ),
        child: BottomNavigationBar(
            onTap: (index){
              setState(() {
                myIndex = index;
              });
            },

            currentIndex: myIndex,
            backgroundColor: Theme.of(context).primaryColor,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            // elevation: 10,
            iconSize: 32,
            selectedFontSize: 18,
            selectedItemColor: hexToColor("40D900"),
            unselectedItemColor: Theme.of(context).canvasColor,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined),label: "Notification"),
              BottomNavigationBarItem(icon: Icon(Icons.flight_class_outlined),label: "My Classes"),
              BottomNavigationBarItem(icon: Icon(Icons.menu_outlined),label: "Menu"),
            ]),
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
