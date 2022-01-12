import 'package:ecommerce/config/color_config.dart';
import 'package:ecommerce/widgets/common_widget.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 100),
        decoration: BoxDecoration(
          color: AppColor.buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          alignment: Alignment.center,
          child: textWidget(
            title: title,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
