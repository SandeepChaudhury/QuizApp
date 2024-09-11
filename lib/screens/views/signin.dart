import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';
import 'package:quiz_app/screens/views/signup.dart';

import '../../constants.dart';

class SignIn extends StatefulWidget {
  final Function? toogleView;

  SignIn(this.toogleView);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String email = '', password = '';
  // final AuthService _authService = AuthService();

  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: const Icon(Icons.question_answer),
          title: const Text("Quick Quiz")),
      body: Stack(children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SvgPicture.asset(
              "assets/icons/wickedbackground.svg",
              fit: BoxFit.fill,
            )),
        Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [

                const Spacer(
                  flex: 2,
                ),
                TextFormField(
                  validator: (val) {
                    return val!.isEmpty ? "Enter email" : null;
                  },
                  decoration: const InputDecoration(
                    fillColor: Color.fromRGBO(62, 70, 190, 0.4),
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  onChanged: (val) {
                    email = val;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  validator: (val) {
                    return val!.isEmpty ? "Enter Password" : null;
                  },
                  decoration: const InputDecoration(
                    fillColor: Color.fromRGBO(62, 70, 190, 0.4),
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  onChanged: (val) {
                    email = val;
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context)=>  WelcomeScreen(name: 'Sandeep', previousScore: '0')));},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(0.75), // 15
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account? ',
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                    GestureDetector(
                      onTap: () {
                        // widget.toogleView();
                      },
                      child: GestureDetector(
                        onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context)=>  SignUp(null)));},
                        child: const Text('Sign Up',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                fontSize: 17)),
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
