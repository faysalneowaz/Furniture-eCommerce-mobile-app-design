import 'package:ecommarce/util/constant.dart';
import 'package:flutter/material.dart';

class ButtonDesign extends StatelessWidget {
  String text;
  void Function() onTap;
  ButtonDesign({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 250,
        margin: const EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          color: UtilConstant.shark,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
