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
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(Icons.add),
                                        Text("1"),
                                        Icon(Icons.add),
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
                                        Icon(Icons.delete),
                                        Text("Remove")
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
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
