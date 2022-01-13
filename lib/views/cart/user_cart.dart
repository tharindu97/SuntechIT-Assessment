import 'package:ecommerce/config/color_config.dart';
import 'package:ecommerce/widgets/common_widget.dart';
import 'package:flutter/material.dart';

class UserCart extends StatefulWidget {
  static const routeName = './cart';
  const UserCart({Key? key}) : super(key: key);

  @override
  _UserCartState createState() => _UserCartState();
}

class _UserCartState extends State<UserCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: AppBar(
        backgroundColor: AppColor.black,
        title: textWidget(title: "My Cart", fontSize: 25),
        leading: const Icon(Icons.arrow_back_ios),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 25,
                      ),
                      height: 200,
                      decoration: BoxDecoration(
                        color: AppColor.itemColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Image.asset("images/item2.png"),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 20),
                                          child: textWidget(
                                            title: "CosmicByte GS430 Wire",
                                            fontSize: 25,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        RichText(
                                          textAlign: TextAlign.right,
                                          text: const TextSpan(
                                            text: "159.00  ",
                                            style: TextStyle(
                                              color: AppColor.lightGray,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: "99.00",
                                                style: TextStyle(
                                                  color: AppColor.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 40,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: const [
                                        Icon(
                                          Icons.add,
                                          color: AppColor.white,
                                        ),
                                        Text(
                                          "1",
                                          style: TextStyle(
                                            color: AppColor.white,
                                          ),
                                        ),
                                        Icon(
                                          Icons.add,
                                          color: AppColor.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.delete,
                                          color: AppColor.lightGray,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Remove",
                                          style: TextStyle(
                                            color: AppColor.lightGray,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              color: AppColor.itemColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 40),
                      child: RichText(
                        text: const TextSpan(
                          text: "243.00  \n",
                          style: TextStyle(
                            color: AppColor.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "View Details",
                              style: TextStyle(
                                color: AppColor.blue,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColor.buttonColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: textWidget(
                        title: "Place Order",
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
