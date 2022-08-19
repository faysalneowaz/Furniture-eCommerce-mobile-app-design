import 'package:flutter/material.dart';

class My_Cart_Page extends StatefulWidget {
  const My_Cart_Page({Key? key}) : super(key: key);

  @override
  State<My_Cart_Page> createState() => _My_Cart_PageState();
}

class _My_Cart_PageState extends State<My_Cart_Page> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("My Cart"),
    );
  }
}
