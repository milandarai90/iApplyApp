import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }

}
class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     // appBar: AppBar(
     //   title: Text(''),
     // ),
     body: Container(
       color: Theme.of(context).primaryColor,
       child: Padding(
         padding: const EdgeInsets.all(20.0),
         child: Form(
           child: Column(
             children: [

               Padding(
                 padding: const EdgeInsets.all(14.0),
                 child: Container(
                   height: 250,
                     width: 250,
                     child: Image.asset('assets/images/img.png')),
               ),
              SizedBox(
                height:20,
              ),

               TextFormField(
                 decoration: InputDecoration(
                   // labelText: 'Username',
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10.0),
                       borderSide: BorderSide(
                         color: Colors.red,
                         width: 2.0,
                       ),
                   ),
                     enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                         color: Colors.white,
                         width: 2.0,
                       ),
                       borderRadius: BorderRadius.circular(10.0)
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10.0),
                       borderSide: BorderSide(
                         color: Colors.white,
                         width: 3.0,
                       )
                     )
                 ),
               ),
               SizedBox(
                 height: 30,
               ),
               TextFormField(
                 decoration: InputDecoration(
                   // labelText: 'Password',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10.0),
                     borderSide: BorderSide(
                       color: Colors.white,
                       width: 2.0,
                     )
                   ),
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.white,
                       width: 2.0
                     ),
                       borderRadius: BorderRadius.circular(10.0),
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10.0),
                     borderSide: BorderSide(
                       color: Colors.white,
                       width: 3,
                     )
                   )

                 ),
               )
             ],
           ),
         ),
       ),
     ),
   );
  }

}