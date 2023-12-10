import 'package:flutter/material.dart';

class InputField extends StatelessWidget{

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const InputField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText
  });

  @override
  Widget build(BuildContext context){

    return Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child:TextField(
          controller: controller,
          obscureText: obscureText,
          obscuringCharacter: "*",
          decoration: InputDecoration(
            enabledBorder:const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black26
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black54
              )
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,


          ),
        )
      );
  }
}