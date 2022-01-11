import 'package:ecommerce/config/color_config.dart';
import 'package:ecommerce/widgets/common_widget.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/social_media_button.dart';
import 'package:flutter/material.dart';

class UserRegister extends StatefulWidget {

  static const routeName = './register';
  const UserRegister({Key? key}) : super(key: key);

  @override
  _UserRegisterState createState() => _UserRegisterState();
}

class _UserRegisterState extends State<UserRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: ListView(
        children: [
          const SizedBox(height: 5,),
          backButton(),
          const SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.only(left: 30),
            alignment: Alignment.topLeft,
            child: textWidget(title: "Sign up", fontSize: 25),
          ),
          const SizedBox(height: 40,),

          // User Full Name
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
                  child: Image.asset("images/username.png"),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Full name",
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

          const SizedBox(height: 15,),

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

          const SizedBox(height: 15,),

          // User Password
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
                  child: Image.asset("images/password.png"),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "your password",
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

          const SizedBox(height: 15,),

          // User Confirm Password
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
                  child: Image.asset("images/password.png"),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "your password",
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

          const SizedBox(height: 25,),

          const CustomButton(title: "SIGN UP"),

          const SizedBox(height: 50,),

          const Text(
            "OR",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColor.lightGray,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8,),

          const SocialMedia(title: "Login With Google", imagePath: "images/google.png"),

          const SizedBox(height: 15,),

          const SocialMedia(title: "Login With Facebook", imagePath: "images/facebook.png"),

          const SizedBox(height: 15,),

          richText(firstName: "Already have an account? ", lastName: ' Sign in'),

        ],
      ),
    );
  }
}
