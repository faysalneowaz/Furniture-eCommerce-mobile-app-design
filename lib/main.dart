import 'package:ecommarce/dashboard/dash_board.dart';
import 'package:ecommarce/provider/cart_provider.dart';
import 'package:ecommarce/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => CartProvider()),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: UtilConstant.APP_NAME,
        home: DashBoard(),
      ),
    );
  }
}
