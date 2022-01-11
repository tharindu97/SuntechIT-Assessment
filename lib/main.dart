import 'package:ecommerce/routers.dart';
import 'package:ecommerce/views/introduction/introduction.dart';
import 'package:ecommerce/views/user_login/user_login.dart';
import 'package:ecommerce/views/user_register/user_register.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const SuntechITEcommerceApp());
}

class SuntechITEcommerceApp extends StatelessWidget {
  const SuntechITEcommerceApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SunTech IT Ecommerce Application',
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: UserRegister.routeName,
    );
  }
}
