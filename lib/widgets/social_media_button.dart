import 'package:ecommerce/config/color_config.dart';
import 'package:ecommerce/widgets/common_widget.dart';
import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key, required this.title, required this.imagePath}) : super(key: key);
  final String imagePath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 60),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Image.asset(imagePath),
          ),
          Expanded(
            child: Container(
              child: textWidget(title: title, fontSize: 18, color: AppColor.black),
            ),
          ),
        ],
      ),
    );
  }
}
