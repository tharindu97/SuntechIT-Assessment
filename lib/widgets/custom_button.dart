import 'package:ecommerce/config/color_config.dart';
import 'package:ecommerce/widgets/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.onTap,
    required this.isLoading,
  }) : super(key: key);
  final String title;
  final void Function() onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 60),
        decoration: BoxDecoration(
          color: AppColor.buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: isLoading
            ? const Center(
                child: SpinKitFadingCircle(
                  color: Colors.white,
                  size: 25.0,
                ),
              )
            : Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: textWidget(
                        title: title,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    width: 60,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Image.asset("images/next.png"),
                  ),
                ],
              ),
      ),
    );
  }
}
