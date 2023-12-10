import 'package:flutter/material.dart';

class SigninButton extends StatelessWidget{
  String displayString;
  SigninButton({
    super.key,
    required this.displayString
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10)
      ),
      child:Center(
        child:Text(
          displayString,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
      ),

    );
  }
}