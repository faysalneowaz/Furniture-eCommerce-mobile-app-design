import 'package:ecommarce/home/home_page.dart';
import 'package:ecommarce/util/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: UtilConstant.APP_NAME,
      home: HomePage(),
    );
  }
}
