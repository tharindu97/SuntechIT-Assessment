import 'package:ecommerce/bloc/authentication_bloc.dart';
import 'package:ecommerce/config/color_config.dart';
import 'package:ecommerce/model/helper/authenricationrespond.dart';
import 'package:ecommerce/utils/user_token.dart';
import 'package:ecommerce/views/navigation/navigation_bar.dart';
import 'package:ecommerce/widgets/common_widget.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:ecommerce/widgets/social_media_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserLogin extends StatefulWidget {
  static const routeName = './login';
  const UserLogin({Key? key}) : super(key: key);

  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  AuthenticationBloc authenticationBloc = AuthenticationBloc();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isLoadingButton = false;

  String? token;
  Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  @override
  void initState() {
    prefs.then((value) => {token = value.getString('token')});
    super.initState();
  }

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
            alignment: Alignment.center,
            child: textWidget(title: "Sign in", fontSize: 25),
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
                Expanded(
                  child: TextFormField(
                    style:  const TextStyle(color: AppColor.white,),
                    controller: _userNameController,
                    decoration: const InputDecoration(
                      hintText: "username",
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
                Expanded(
                  child: TextFormField(
                    obscureText: true,
                    style:  const TextStyle(color: AppColor.white,),
                    controller: _passwordController,
                    decoration: const InputDecoration(
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

          const SizedBox(
            height: 25,
          ),

          CustomButton(
            title: "SIGN IN",
            isLoading: isLoadingButton,
            onTap: () async {
              setState(() {
                isLoadingButton = true;
              });
              await authenticationBloc
                  .loginUserAccount(
                token: token.toString(),
                username: _userNameController.text.toString(),
                password: _passwordController.text.toString(),
              )
                  .then(
                (Responce responce) {
                  if (responce.status == 1) {
                    setState(() {
                      isLoadingButton = false;
                    });
                    Navigator.pushNamed(
                      context,
                      NavigationBar.routeName,
                    );
                  }
                  setState(() {
                    isLoadingButton = false;
                  });
                  flutterToast(msg: responce.message);
                },
              ).whenComplete(() {
                setState(() {
                  isLoadingButton = false;
                });
              });
            },
          ),

          const SizedBox(
            height: 50,
          ),

          const Text(
            "OR",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColor.lightGray,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 8,
          ),

          const SocialMedia(
              title: "Login With Google", imagePath: "images/google.png"),

          const SizedBox(
            height: 15,
          ),

          const SocialMedia(
              title: "Login With Facebook", imagePath: "images/facebook.png"),

          const SizedBox(
            height: 15,
          ),

          richText(firstName: "Don't have an account? ", lastName: ' Sign up'),
        ],
      ),
    );
  }
}
