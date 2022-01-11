import 'package:ecommerce/config/color_config.dart';
import 'package:ecommerce/widgets/common_widget.dart';
import 'package:flutter/material.dart';

class Introduction extends StatefulWidget {
  static const routeName = './introduction';
  const Introduction({Key? key}) : super(key: key);

  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/main_bg_design.png'),
              fit: BoxFit.fitWidth,
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColor.lightBlue,
                AppColor.blue,
              ],
            ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: const [
                  Positioned(
                    top: 80,
                    right: 0,
                    child: Image(
                      height: 500,
                      alignment: Alignment.centerRight,
                      image: AssetImage('images/main_img.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 90,
                    left: 40,
                    child: Text(
                      "SUNTECIT",
                      style: TextStyle(
                          color: AppColor.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                   Positioned(
                    top: 120,
                    left: 40,
                    child: Text(
                      "Ecommerce",
                      style: TextStyle(
                          color: AppColor.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Sign in & Sign up Button
            Container(
              height: 120,
              alignment: Alignment.center,
              child: Container(
                width: 206,
                height: 56,
                decoration: BoxDecoration(
                  color: AppColor.black,
                  borderRadius: BorderRadius.circular(190),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 103,
                      height: 54,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColor.black,
                        borderRadius: BorderRadius.circular(190),
                      ),
                      child: textWidget(title: "Sign in", fontSize: 18),
                    ),
                    Container(
                      width: 98,
                      height: 48,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColor.buttonColor,
                        borderRadius: BorderRadius.circular(190),
                      ),
                      child: textWidget(title: "Sign up", fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


