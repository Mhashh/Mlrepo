import 'package:flutter/material.dart';
import '../components/input_field.dart';
import '../components/signin_button.dart';
import '../components/tile.dart';

class LoginPage extends StatelessWidget{
  LoginPage({super.key});
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  void signInUser(){}
  void googleSignIn(){}
  void appleSignIn(){}

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
              SigninButton(displayString: "Signin",onTap: signInUser,),
              const SizedBox(height: 50,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child:Row(
                  children: [
                    Expanded(
                      child:Divider(
                        thickness: 0.6,
                        color:Colors.black
                      )
                    ),
                    Text("or continue with"),
                    Expanded(
                        child:Divider(
                            thickness: 0.6,
                            color:Colors.black
                        )
                    )
                  ],
                )
              ),
              SizedBox(height: 50,),
              Center(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Tile(imgPath:'images/google.png',height: 80,onTap: googleSignIn,),
                    Tile(imgPath:'images/apple.png',height: 80,onTap: appleSignIn,)
                  ],
                )
              )


            ],
          )
        ),
      ),
    );

  }
}