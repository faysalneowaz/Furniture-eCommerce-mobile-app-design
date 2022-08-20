// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommarce/cart/cart_page.dart';
import 'package:ecommarce/home/body/body_content.dart';
import 'package:ecommarce/model/home_item_model.dart';
import 'package:ecommarce/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

import 'package:ecommarce/util/constant.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> _widget_List = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UtilConstant.pampas,
        elevation: 0,
        title: const Text(
          "Home",
          style: TextStyle(
            color: UtilConstant.shark,
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.only(
              right: 10.0,
              top: 5.0,
            ),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                side: const BorderSide(
                    width: 1, color: UtilConstant.rollingstone),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const My_Cart_Page(),
                  ),
                );
              },
              child: Badge(
                position: BadgePosition.topEnd(top: -12),
                animationDuration: const Duration(milliseconds: 300),
                animationType: BadgeAnimationType.slide,
                badgeContent:
                    Consumer<CartProvider>(builder: (context, value, child) {
                  return Text(
                    value.cartList.length.toString(),
                    style: const TextStyle(
                      color: UtilConstant.pampas,
                    ),
                  );
                }),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 20,
                  color: UtilConstant.rollingstone,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: UtilConstant.pampas,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.7,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: home_Item_list.length,
          itemBuilder: (context, index) {
            return GridMenuDesign(
              item_name: home_Item_list[index].item_name,
              image_url: home_Item_list[index].item_imge,
              price: home_Item_list[index].item_price,
              item_id: home_Item_list[index].item_id,
            );
          },
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite_border_outlined),
      //       label: 'Wishlist',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart_outlined),
      //       label: 'Cart',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_outline_outlined),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      // ),
    );
  }
}
