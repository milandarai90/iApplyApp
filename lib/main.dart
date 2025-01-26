import 'package:flutter/material.dart';
import 'package:iapply/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: hexToColor('#523a81')),
          primaryTextTheme: TextTheme(
              titleLarge:TextStyle(
              fontSize: 22,
                color: Theme.of(context).canvasColor,
                fontWeight: FontWeight.w500
            ),
              titleMedium:TextStyle(
                fontSize: 18,
                color: Theme.of(context).primaryColor,
              ),
            bodyLarge:TextStyle(
              fontSize: 16,
              color: Theme.of(context).primaryColor,
            ),
            labelLarge: TextStyle(
                color: Theme.of(context).canvasColor,fontWeight: FontWeight.bold, fontSize: 16
            ),
            labelSmall : TextStyle(
              fontSize: 14,
              color: hexToColor('40d900')
            )
          ),

          useMaterial3: true,
        ),
        home: SplashScreen()
    );
  }
  Color hexToColor(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor"; // Add alpha value if not provided
    }
    return Color(int.parse("0x$hexColor"));
  }
}



