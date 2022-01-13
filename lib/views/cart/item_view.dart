import 'package:ecommerce/config/color_config.dart';
import 'package:flutter/material.dart';

class ItemView extends StatefulWidget {
  static const routeName = './item';
  const ItemView({Key? key}) : super(key: key);

  @override
  _ItemViewState createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColor.buttonColor,
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    color: AppColor.white,
                  ),
                  Image.asset("images/cart.png"),
                ],
              ),
            ),
            Container(
              height: 300,
              child: Image.asset("images/item1.png"),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: AppColor.black,
                ),
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          RichText(
                            textAlign: TextAlign.left,
                            text: const TextSpan(
                              text: "Boat Ws54 \n",
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 30,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "4.5",
                                  style: TextStyle(
                                    color: AppColor.white,
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 100),
                            child: Image.asset(
                              "images/favourite.png",
                            ),
                          ),
                        ],
                      ),
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
