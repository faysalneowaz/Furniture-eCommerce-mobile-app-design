import 'package:flutter/material.dart';

class My_Profile extends StatefulWidget {
  const My_Profile({Key? key}) : super(key: key);

  @override
  State<My_Profile> createState() => _My_ProfileState();
}

class _My_ProfileState extends State<My_Profile> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("My Profile"),
    );
  }
}
