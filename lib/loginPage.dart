import 'package:flutter/material.dart';
import 'package:iapply/model_login.dart';
import 'package:iapply/services_api.dart';
import 'package:iapply/signupPage.dart';
import 'package:iapply/NavigationBar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  bool hiddenPassword = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  late LoginRequest requestModel;

  @override
  void initState() {
    super.initState();
    requestModel = LoginRequest(password: "", email: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: InkWell(
        onTap: () {
          FocusScope.of(context).unfocus();
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Form(
                            key: formKey,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  TextFormField(
                                    validator: (input) {
                                      if (input == null || input.isEmpty) {
                                        return "Email is required.";
                                      }
                                      if (!input.contains("@") || !input.contains(".")) {
                                        return "Enter a valid email";
                                      }
                                      return null;
                                    },
                                    controller: emailController,
                                    style: const TextStyle(color: Colors.black),
                                    decoration: inputDecoration("Enter your email", Icons.email, context),
                                  ),
                                  const SizedBox(height: 20),
                                  TextFormField(
                                    validator: (input) {
                                      if (input == null || input.isEmpty) {
                                        return "Enter a Password.";
                                      }
                                      if (input.length < 8) {
                                        return "Password must be at least 8 characters.";
                                      }
                                      return null;
                                    },
                                    controller: passwordController,
                                    obscureText: hiddenPassword,
                                    obscuringCharacter: '*',
                                    decoration: InputDecoration(
                                      enabledBorder: outlineBorder(),
                                      focusedBorder: outlineBorder(focused: true, context: context),
                                      prefixIcon: Icon(Icons.key, color: Theme.of(context).primaryColor),
                                      hintText: "Enter your password",
                                      hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            hiddenPassword = !hiddenPassword;
                                          });
                                        },
                                        icon: Icon(hiddenPassword ? Icons.visibility_off : Icons.visibility),
                                      ),
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  TextButton(
                                    onPressed: () {
                                      // TODO: Implement Forgot Password logic
                                    },
                                    child: Text(
                                      'Forgot Password?',
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    width: 120,
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        // if (formKey.currentState!.validate()) {
                                        //   requestModel.email = emailController.text;
                                        //   requestModel.password = passwordController.text;
                                        //
                                        //   ApiServices apiServices = ApiServices();
                                        //   LoginResponse response = await apiServices.login(requestModel);
                                        //
                                        //   if (response.token != null && response.token!.isNotEmpty) {
                                        //     // Login successful, navigate to the home screen
                                        //     Navigator.pushReplacement(
                                        //       context,
                                        //       MaterialPageRoute(builder: (context) => NavigationBarPage()),
                                        //     );
                                        //   } else {
                                        //     // Login failed, show error message
                                        //     ScaffoldMessenger.of(context).showSnackBar(
                                        //       SnackBar(
                                        //         content: Text(response.email ?? "Login successful."),
                                        //         backgroundColor: Colors.green,
                                        //       ),
                                        //     );
                                        //   }
                                        // }

                                      }

                                      ,
                                        style: ElevatedButton.styleFrom(
                                        backgroundColor: Theme.of(context).primaryColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: Text(
                                        'LOGIN',
                                        style: TextStyle(
                                          color: Theme.of(context).canvasColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Don't Have an Account?",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(builder: (context) => SignupPage()),
                                          );
                                        },
                                        child: Text(
                                          'Register',
                                          style: TextStyle(color: hexToColor('#40d900')),
                                        ),
                                      ),
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

  InputDecoration inputDecoration(String hint, IconData icon, BuildContext context) {
    return InputDecoration(
      enabledBorder: outlineBorder(),
      focusedBorder: outlineBorder(focused: true, context: context),
      prefixIcon: Icon(icon, color: Theme.of(context).primaryColor),
      hintText: hint,
      hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
      fillColor: Colors.white,
      filled: true,
    );
  }

  OutlineInputBorder outlineBorder({bool focused = false, BuildContext? context}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: focused ? Theme.of(context!).primaryColor : Colors.white,
        width: focused ? 2.0 : 1.0,
      ),
      borderRadius: BorderRadius.circular(10.0),
    );
  }
}

Color hexToColor(String hexColor) {
  hexColor = hexColor.replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF$hexColor"; // Add alpha if missing
  }
  return Color(int.parse("0x$hexColor"));
}
