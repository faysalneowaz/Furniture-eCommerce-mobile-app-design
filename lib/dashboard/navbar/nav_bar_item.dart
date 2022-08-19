// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class IconBottomBar extends StatelessWidget {
  const IconBottomBar({
    Key? key,
    required this.text,
    required this.icon,
    required this.selected,
    this.selectedColor = Colors.amber,
    this.unSelectedColor = Colors.grey,
    this.iconSize = 25,
    this.teztSixe = 12,
    this.textHeight = 0,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Color selectedColor;
  final Color unSelectedColor;
  final double iconSize;
  final double teztSixe;
  final double textHeight;
  // final LabelPosition textPosition;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: iconSize,
            color: selected ? selectedColor : unSelectedColor,
          ),
        ),
        Text(
          selected ? text : "",
          style: TextStyle(
              fontSize: teztSixe,
              height: textHeight,
              color: selected ? selectedColor : unSelectedColor),
        )
      ],
    );
  }
}

// class LabelPosition {
//   static const String TOP = "TOP";
//   static const String BOTTOM = "BOTTOM";
//   static const String LEFT = "LEFT";
//   static const String RIGNT = "RIGHT";
// }
