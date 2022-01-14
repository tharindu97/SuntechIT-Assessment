import 'package:ecommerce/config/color_config.dart';
import 'package:ecommerce/views/cart/item_view.dart';
import 'package:ecommerce/widgets/common_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const routeName = './home';
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: ListView(
        children: [
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("images/menu.png"),
                Image.asset("images/notification.png"),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 18, bottom: 20),
            child: textWidget(
              title: "Discover Your Best",
              fontSize: 25,
            ),
          ),
          // Search Bar
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
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
                  child: Image.asset("images/search.png"),
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Headphones",
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
            height: 10,
          ),

          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColor.lightBlue,
                  Colors.purple,
                ],
              ),
            ),
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/banner_bg_design.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Image.asset("images/banner_img.png"),
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 102,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.itemColor,
                  ),
                  alignment: Alignment.center,
                  child: textWidget(title: "All Product", fontSize: 15),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          Container(
            height: 210,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, ItemView.routeName);
                  },
                  child: Container(
                    width: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.itemColor,
                    ),
                    child: Column(
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
                                    fontSize: 15,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "4.5",
                                      style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 25),
                                child: Image.asset(
                                  "images/favourite.png",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          child: Image.asset("images/item1.png"),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              RichText(
                                textAlign: TextAlign.left,
                                text: const TextSpan(
                                  text: "89.00 \n",
                                  style: TextStyle(
                                    color: AppColor.lightGray,
                                    fontSize: 12,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "54.00",
                                      style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 60),
                                color: AppColor.buttonColor,
                                child: const Icon(
                                  Icons.add,
                                  color: AppColor.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
