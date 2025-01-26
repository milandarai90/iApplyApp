import 'package:flutter/material.dart';
import 'package:iapply/homePageScreen.dart';
import 'package:iapply/signupPage.dart';
import 'package:iapply/NavigationBar.dart';


class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }

}
class LoginPageState extends State<LoginPage>{
   var emailController = TextEditingController();
   var passwordController = TextEditingController();

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

       child: SafeArea(
         child: Container(
           height: MediaQuery.of(context).size.height,
           color: Theme.of(context).primaryColor,
           child: SingleChildScrollView(
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
                     child: Card(
                       elevation: 20,
                       child: Container(
                         decoration: BoxDecoration(
                             color: Theme.of(context).canvasColor,
                           borderRadius: BorderRadius.circular(10)
                         ),
                                
                         child: Form(
                           child: Padding(
                             padding: const EdgeInsets.all(20.0),
                             child: Column(
                               children: [
                                 Text('Login',style: TextStyle(fontSize: 30,color: Theme.of(context).primaryColor, fontWeight: FontWeight.w800),),
                                 SizedBox(
                                   height: 20,
                                 ),
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
                                           color: Theme.of(context).primaryColor,
                                           width: 2.0,
                                         )
                                       ),
                                       prefixIcon: Icon(Icons.email,color: Theme.of(context).primaryColor,),
                                       hintText: "Enter your email.",
                                       hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                                     fillColor: Colors.white,
                                     filled: true,
                                   ),
                                 ),
                                 SizedBox(
                                   height: 20,
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
                                         color: Theme.of(context).primaryColor,
                                         width: 2,
                                       ),
                                     ),
                                     prefixIcon: Icon(Icons.key,color: Theme.of(context).primaryColor,),
                                     hintText: "Enter your password.",
                                     hintStyle: TextStyle(color: Colors.grey,fontSize: 16),
                                     suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.remove_red_eye),),
                                     suffixIconColor: Theme.of(context).primaryColor,
                                     fillColor: Colors.white,
                                     filled: true,
                                
                                   ),
                                   obscureText: true,
                                   obscuringCharacter: '*',
                                 ),
                                 SizedBox(
                                  height: 10,
                                ),
                                 TextButton(onPressed: (){
                                    // something here
                                 }, child: Text('Forgot Password?',style: TextStyle(color: Theme.of(context).primaryColor , fontSize: 14),)),
                                 SizedBox(
                                   height: 10
                                 ),
                                 SizedBox(
                                   width: 120,
                                   child: ElevatedButton(onPressed: (){
                                     String userEmail = emailController.text.toString();
                                     String userPassword = passwordController.text.toString();
                                
                                   //some operation to be done here...
                                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavigationBarPage()));
                                
                                   },
                                     style: ElevatedButton.styleFrom(
                                       backgroundColor: Theme.of(context).primaryColor,
                                       shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(10)
                                       )
                                     ),
                                       child: Text('LOGIN',style: TextStyle(color: Theme.of(context).canvasColor,fontWeight: FontWeight.bold, fontSize: 16),),
                                   ),
                                
                                 ),
                                 SizedBox(
                                     height: 10
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text("Don't Have an Account?",style: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),),
                                     TextButton(onPressed: (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignupPage(),));
                                     }, child: Text('Register',style: TextStyle(color: hexToColor('#40d900')),))
                                   ],
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
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
