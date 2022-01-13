import 'package:ecommerce/config/color_config.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

Text textWidget(
    {required String title,
    required double fontSize,
    Color color = AppColor.white}) {
  return Text(
    title,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
    ),
  );
}

Widget backButton(BuildContext context) {
  return Container(
    alignment: Alignment.topLeft,
    child: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back,
        color: AppColor.white,
      ),
    ),
  );
}

Widget richText({required String firstName, required String lastName}) {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      text: firstName,
      style: const TextStyle(
        color: AppColor.white,
      ),
      children: <TextSpan>[
        TextSpan(
          text: lastName,
          style: const TextStyle(
            color: AppColor.blue,
          ),
        ),
      ],
    ),
  );
}

Future<bool?> flutterToast({required String msg}) async {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 5,
    backgroundColor: AppColor.buttonColor,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
