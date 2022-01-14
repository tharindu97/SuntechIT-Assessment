import 'package:ecommerce/config/color_config.dart';
import 'package:ecommerce/widgets/common_widget.dart';
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
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColor.white,
                    ),
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
                      child: Row(
                        children: [
                          RichText(
                            textAlign: TextAlign.left,
                            text: const TextSpan(
                              text: "Boat Ws54 \n",
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 22,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "122.00 ",
                                  style: TextStyle(
                                    color: AppColor.lightGray,
                                    fontSize: 17,
                                  ),
                                ),
                                TextSpan(
                                  text: "99.00\n",
                                  style: TextStyle(
                                    color: AppColor.white,
                                    fontSize: 17,
                                  ),
                                ),
                                TextSpan(
                                  text: "4.5",
                                  style: TextStyle(
                                    color: AppColor.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 220),
                            child: Image.asset(
                              "images/favourite.png",
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 15,),

                    RichText(
                      textAlign: TextAlign.left,
                      text: const TextSpan(
                        text: "Product Details \n \n",
                        style: TextStyle(
                          color: AppColor.white,
                          fontSize: 16,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "The ruins of the capital built by the parricidal King Kassapa I (477–95) lie on the steep slopes and at the summit of a granite peak standing",
                            style: TextStyle(
                              color: AppColor.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: AppColor.buttonColor,
                                  width: 2,
                                )
                              ),
                              height: 50,
                              child: textWidget(title: "Add to Cart", fontSize: 20,),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.buttonColor,
                              ),
                              height: 50,
                              child: textWidget(title: "Buy Now", fontSize: 20,),
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
