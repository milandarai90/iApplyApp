import 'package:flutter/material.dart';
import 'package:iapply/loginPage.dart';

class SignupPage extends StatefulWidget{
  const SignupPage({super.key});

  @override
  State<StatefulWidget> createState() {
   return SignupPageState();
  }
}

class SignupPageState extends State<SignupPage>{
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
  onTap:() {FocusScope.of(context).requestFocus(FocusNode());},
  child: SafeArea(
    child: Container(
      height: MediaQuery.of(context).size.height,
      color: Theme.of(context).primaryColor,
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Image.asset("assets/images/img.png"),
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
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Sign Up',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 30, fontWeight: FontWeight.w800),),
                              SizedBox(
                                height: 20,
                              ),

                              TextFormField(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                      width: 2
                                    ),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  hintText: "Full Name",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefixIcon: Icon(Icons.person),
                                  prefixIconColor: Theme.of(context).primaryColor,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 2
                                      ),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefixIcon: Icon(Icons.email),
                                  prefixIconColor: Theme.of(context).primaryColor,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 2
                                      ),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                  prefixIcon: Icon(Icons.lock),
                                  prefixIconColor: Theme.of(context).primaryColor,
                                  suffixIcon: IconButton(onPressed: (){
                                    // something
                                  }, icon: Icon(Icons.remove_red_eye)),
                                  suffixIconColor: Theme.of(context).primaryColor,
                                ),
                                obscureText: true,
                                obscuringCharacter: '*',
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                        )
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Theme.of(context).primaryColor,
                                            width: 2
                                        ),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    hintText: "Confirm Password",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                    prefixIcon: Icon(Icons.lock_open),
                                    prefixIconColor: Theme.of(context).primaryColor,
                                    suffixIcon: IconButton(onPressed: (){
                                    }, icon: Icon(Icons.remove_red_eye)),
                                    suffixIconColor: Theme.of(context).primaryColor
                                ),
                                obscureText: true,
                                obscuringCharacter: '*',
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 120,
                                child: ElevatedButton(onPressed: (){

                                // something to be done

                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Theme.of(context).primaryColor,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  )
                                ), child: Text('SIGN UP'),),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Already have an account?'),
                                  TextButton(onPressed: (){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                                  }, child: Text('Sign in',style: TextStyle(color: hexToColor("#40d900",)),))
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