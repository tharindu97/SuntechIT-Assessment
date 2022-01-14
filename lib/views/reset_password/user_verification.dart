import 'package:ecommerce/config/color_config.dart';
import 'package:ecommerce/widgets/common_widget.dart';
import 'package:ecommerce/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class UserVerification extends StatefulWidget {
  static const routeName = './userVerification';
  const UserVerification({Key? key}) : super(key: key);

  @override
  _UserVerificationState createState() => _UserVerificationState();
}

class _UserVerificationState extends State<UserVerification> {
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
            child: textWidget(title: "Verification", fontSize: 25),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: const Text(
              "We've send you the verification code on \nabc@gmail.com",
              style: TextStyle(color: AppColor.lightGray),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 50.0,
              left: 50.0,
              bottom: 20.0,
            ),
            child: PinCodeTextField(
              appContext: context,
              length: 4,
              onChanged: (value) {},
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(10),
                inactiveColor: AppColor.white,
                activeColor: AppColor.white,
                selectedColor: AppColor.lightGray,
                activeFillColor: AppColor.white,
                fieldHeight: 50,
                fieldWidth: 40,
              ),
              onCompleted: (value) {},
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          CustomButton(
            isLoading: false,
            title: "CONTINUE",
            onTap: () {},
          ),
          const SizedBox(
            height: 15,
          ),
          richText(
            firstName: "Re-send code in ",
            lastName: ' 0:20',
          ),
        ],
      ),
    );
  }
}
