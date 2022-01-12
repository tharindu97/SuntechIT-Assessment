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
        child: const Text("View Item"),
      ),
    );
  }
}
