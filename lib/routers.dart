import 'package:ecommerce/views/cart/item_view.dart';
import 'package:ecommerce/views/cart/user_cart.dart';
import 'package:ecommerce/views/home/home.dart';
import 'package:ecommerce/views/introduction/introduction.dart';
import 'package:ecommerce/views/navigation/navigation_bar.dart';
import 'package:ecommerce/views/reset_password/reset_password.dart';
import 'package:ecommerce/views/reset_password/user_verification.dart';
import 'package:ecommerce/views/user_login/user_login.dart';
import 'package:ecommerce/views/user_profile/user_profile.dart';
import 'package:ecommerce/views/user_register/user_register.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  Introduction.routeName: (_) => const Introduction(),
  UserLogin.routeName: (_) => const UserLogin(),
  UserRegister.routeName: (_) => const UserRegister(),
  UserProfile.routeName: (_) => const UserProfile(),
  ResetPassword.routeName: (_) => const ResetPassword(),
  UserVerification.routeName: (_) => const UserVerification(),
  UserCart.routeName: (_) => const UserCart(),
  ItemView.routeName: (_) => const ItemView(),
  Home.routeName: (_) => const Home(),
  NavigationBar.routeName: (_) => const NavigationBar(),
};
