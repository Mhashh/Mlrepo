import 'package:flutter/material.dart';

class SigninButton extends StatelessWidget{
  String displayString;
  final Function()? onTap;
  SigninButton({
    super.key,
    required this.displayString,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:Container(
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
            ),
          ),
        ),
      )

    );
  }
}