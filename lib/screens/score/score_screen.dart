import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';

import '../views/signin.dart';


class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.question_answer), title: Text("Quick Quiz"),actions: [IconButton(onPressed: ()=> Get.to(SignIn(null)), icon: Icon(Icons.logout))],),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: SvgPicture.asset("assets/icons/wickedbackground.svg",
                  fit: BoxFit.fill)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                Spacer(flex: 2),
                Text(
                  "Score",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 30),
                ),
                SizedBox(height: 20),
                Text(
                  "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
                Spacer(),
                InkWell(
                  onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context)=>  WelcomeScreen(name: 'Sandeep', previousScore: "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}")));},
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Text(
                      "Go back to HomePage",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                ),
                Spacer(
                  flex: 2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
