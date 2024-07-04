import 'package:flutter/material.dart';
import 'package:flutter_project/controller.dart';
import 'package:flutter_project/login.dart';
import 'package:flutter_project/widgets/buttons.dart';
import 'package:flutter_project/widgets/textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LogicController();
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height / 2.8,
                  child: Image.asset('images/signup.jpeg'),
                ),
                TextFieldInput(
                    icon: Icons.person,
                    textEditingController: controller.nameController,
                    hintText: 'Enter your name',
                    textInputType: TextInputType.text),
                TextFieldInput(
                    icon: Icons.email,
                    textEditingController: controller.emailController,
                    hintText: 'Enter your email',
                    textInputType: TextInputType.text),
                TextFieldInput(
                  icon: Icons.lock,
                  textEditingController: controller.passwordController,
                  hintText: 'Enter your passord',
                  textInputType: TextInputType.text,
                  isPass: true,
                ),
                MyButtons(onTap: (){}, text: "Sign Up"),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LogInScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        " Login",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
