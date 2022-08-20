import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartBody extends StatefulWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) {
        return Container();
      },
    );
  }
}
