import 'package:ecommerce/config/color_config.dart';
import 'package:ecommerce/views/cart/user_cart.dart';
import 'package:ecommerce/views/home/home.dart';
import 'package:ecommerce/views/user_profile/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavigationBar extends StatefulWidget {
  static const routeName = './nav';
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text('Likes'),
    UserCart(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColor.black,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: AppColor.white,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: AppColor.buttonColor,
              color: AppColor.white,
              tabs: const [
                GButton(
                  icon: Icons.home,
                ),
                GButton(
                  icon: Icons.favorite,
                ),
                GButton(icon: Icons.add_business),
                GButton(
                  icon: Icons.people,
                ),
              ],
              selectedIndex: selectedIndex,
              onTabChange: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
