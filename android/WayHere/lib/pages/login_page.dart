import 'package:flutter/material.dart';
import '../components/input_field.dart';
import '../components/signin_button.dart';

class LoginPage extends StatelessWidget{
  LoginPage({super.key});
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black12,
      body:SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Icon(
                Icons.lock,
                size: 100,
              ),
              SizedBox(height: 50,),
              Text("Welcome, lets continue with authentication!",
              style: TextStyle(
                color: Colors.black,
                fontSize:20
              ),),
              SizedBox(height: 25,),
              //email field
              InputField(
                controller: emailController,
                obscureText: false,
                hintText: "email id",
              ),
              SizedBox(height: 10,),
              //password field
              InputField(
                controller: passwordController,
                obscureText: true,
                hintText: "password",
              ),
              SizedBox(height: 25,),
              SigninButton(displayString: "Signin")

            ],
          )
        ),
      ),
    );

  }
}