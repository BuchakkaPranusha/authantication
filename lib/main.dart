import 'package:flutter/material.dart';
import 'package:flutter_project/login.dart';
import 'package:flutter_project/signup.dart';
import 'package:flutter_project/widgets/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MyButtons(onTap: (){
              Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LogInScreen(),
              ),
            );
            }, text: "LogIn"),
            MyButtons(onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (_) => const SignUpScreen()));
            }, text: "SignUp"),
          ],
        ),
      ),
    );
  }
}
