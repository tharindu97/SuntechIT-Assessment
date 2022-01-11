import 'package:ecommerce/config/color_config.dart';
import 'package:flutter/material.dart';

Text textWidget({required String title, required double fontSize, Color color = AppColor.white}){
  return Text(
    title,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
    ),
  );
}

Widget backButton(){
  return Container(
    alignment: Alignment.topLeft,
    child: IconButton(
      onPressed: (){

      },
      icon: const Icon(
        Icons.arrow_back,
        color: AppColor.white,
      ),
    ),
  );
}

Widget richText({required String firstName, required String lastName}){
  return RichText(
    textAlign: TextAlign.center,
    text:  TextSpan(
      text: firstName,
      style: const TextStyle(color: AppColor.white,),
      children: <TextSpan>[
        TextSpan(text: lastName, style: const TextStyle(color: AppColor.blue,),),
      ],
    ),
  );
}
