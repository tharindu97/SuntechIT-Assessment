import 'package:ecommerce/config/color_config.dart';
import 'package:ecommerce/widgets/common_widget.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  static const routeName = './resetPassword';
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: ListView(
        children: [
          const SizedBox(
            height: 5,
          ),
          backButton(context),
          const SizedBox(
            height: 40,
          ),
          Container(
            margin: const EdgeInsets.only(left: 30),
            alignment: Alignment.topLeft,
            child: textWidget(title: "Reset Password", fontSize: 25),
          ),
          const SizedBox(
            height: 40,
          ),

          Container(
            margin: const EdgeInsets.only(left: 30),
            child: const Text(
              "Please enter your email address to \nrequest q password reset",
              style: TextStyle(color: AppColor.lightGray),
            ),
          ),

          const SizedBox(
            height: 40,
          ),

          // User Email
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            height: 50,
            decoration: BoxDecoration(
              color: AppColor.gray,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColor.lightGray,
                width: 1,
              ),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Image.asset("images/email.png"),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "example@gmail.com",
                      hintStyle: TextStyle(color: AppColor.lightGray),
                      border: InputBorder.none,
                      labelStyle: TextStyle(fontSize: 20.0),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 15,
          ),

          const SizedBox(
            height: 25,
          ),

          CustomButton(
            isLoading: false,
            title: "SEND",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
