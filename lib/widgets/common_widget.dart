import 'package:ecommerce/config/color_config.dart';
import 'package:flutter/material.dart';

Text textWidget({required String title, required double fontSize}){
  return Text(
    title,
    style: TextStyle(
      color: AppColor.white,
      fontSize: fontSize,
    ),
  );
}
