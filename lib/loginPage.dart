import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }

}
class LoginPageState extends State<LoginPage>{
   var emailController = TextEditingController();
   var passwordController = TextEditingController();

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
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(60.0),
               child: Image.asset('assets/images/img.png'),
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Container(
                 color: Theme.of(context).canvasColor,
                 child: Form(
                   child: Padding(
                     padding: const EdgeInsets.all(30.0),
                     child: Column(
                       children: [
                         TextFormField(
                           controller: emailController,
                           style: TextStyle(color: Colors.black),
                           decoration: InputDecoration(
                               enabledBorder: OutlineInputBorder(
                                 borderSide: BorderSide(
                                   color: Colors.white,
                                   // width: 2.0,
                                 ),
                                 borderRadius: BorderRadius.circular(10.0)
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10.0),
                                 borderSide: BorderSide(
                                   color: Colors.white,
                                   width: 2.0,
                                 )
                               ),
                               prefixIcon: Icon(Icons.email,color: Theme.of(context).primaryColor,),
                               hintText: "Enter your email.",
                               hintStyle: TextStyle(color: Colors.grey),
                             fillColor: Colors.white,
                             filled: true,
                           ),
                         ),
                         SizedBox(
                           height: 25,
                         ),
                         TextFormField(
                           controller: passwordController,
                           decoration: InputDecoration(
                             enabledBorder: OutlineInputBorder(
                               borderSide: BorderSide(
                                 color: Colors.white,
                                 // width: 2.0
                               ),
                                 borderRadius: BorderRadius.circular(10.0),
                             ),
                             focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10.0),
                               borderSide: BorderSide(
                                 color: Colors.white,
                                 // width: 2,
                               ),
                             ),
                             prefixIcon: Icon(Icons.key,color: Theme.of(context).primaryColor,),
                             hintText: "Enter your password.",
                             hintStyle: TextStyle(color: Colors.grey),
                             suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.remove_red_eye),),
                             suffixIconColor: Theme.of(context).primaryColor,
                             fillColor: Colors.white,
                             filled: true,

                           ),
                           obscureText: true,
                           obscuringCharacter: '*',
                         ),
                         SizedBox(
                          height: 25,
                        ),
                         Container(
                           width: 120,
                           child: ElevatedButton(onPressed: (){
                             String userEmail = emailController.text.toString();
                             String userPassword = passwordController.text.toString();

                           //some operation to be done here...

                           },
                             style: ElevatedButton.styleFrom(
                               backgroundColor: Theme.of(context).primaryColor,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(10)
                               )
                             ),
                               child: Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 16),),
                           ),

                         )
                       ],
                     ),
                   ),
                 ),
               ),
             ),
           ],
         ),
       ),
     ),
   );
  }

}