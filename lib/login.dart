import 'package:flutter/material.dart';
import 'package:flutter_project/controller.dart';
import 'package:flutter_project/signup.dart';
import 'package:flutter_project/widgets/buttons.dart';
import 'package:flutter_project/widgets/textfield.dart';
import 'package:get/get.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LogicController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // SizedBox(
            //   height: height / 2.7,
            //   child: Image.asset('images/login.jpg'),
            // ),
            TextFieldInput(
                icon: Icons.person,
                textEditingController: controller.emailController,
                hintText: 'Enter your email',
                textInputType: TextInputType.text),
            TextFieldInput(
              icon: Icons.lock,
              textEditingController: controller.passwordController,
              hintText: 'Enter your password',
              textInputType: TextInputType.text,
              isPass: true,
            ),
            MyButtons(onTap: (){

            }, text: "Log In"),
            // Padding(
            //   padding: const EdgeInsets.only(top: 10, left: 100),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       const Text("Don't have an account? "),
            //       GestureDetector(
            //         onTap: () {
            //           Navigator.of(context).push(
            //             MaterialPageRoute(
            //               builder: (context) => const SignUpScreen(),
            //             ),
            //           );
            //         },
            //         child: const Text(
            //           "SignUp",
            //           style: TextStyle(fontWeight: FontWeight.bold),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
          
          ],
        ),
      ),
    );
  }
}
