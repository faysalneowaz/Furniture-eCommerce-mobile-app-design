import 'package:ecommarce/cart/body/cart_body.dart';
import 'package:ecommarce/util/constant.dart';
import 'package:flutter/material.dart';

class My_Cart_Page extends StatefulWidget {
  const My_Cart_Page({Key? key}) : super(key: key);

  @override
  State<My_Cart_Page> createState() => _My_Cart_PageState();
}

class _My_Cart_PageState extends State<My_Cart_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UtilConstant.pampas,
        elevation: 0,
        title: const Text(
          "Cart",
          style: TextStyle(
            color: UtilConstant.shark,
          ),
        ),
        centerTitle: true,
        leading: Container(
          height: 20,
          width: 20,
          margin: const EdgeInsets.only(
            left: 10.0,
            top: 5.0,
          ),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(70.0),
              ),
              side:
                  const BorderSide(width: 1, color: UtilConstant.rollingstone),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: UtilConstant.rollingstone,
            ),
          ),
        ),
      ),
      body: CartBody(),
    );
  }
}
