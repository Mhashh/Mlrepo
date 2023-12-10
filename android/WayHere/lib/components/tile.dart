import "package:flutter/material.dart";

class Tile extends StatelessWidget{
  final String imgPath;
  final double height;
  final Function()? onTap;
  Tile({super.key,required this.imgPath,required this.height,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          border:Border.all(color: Colors.white),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Image.asset(
          imgPath,
          height:height
        ),
      )
    );
  }
}