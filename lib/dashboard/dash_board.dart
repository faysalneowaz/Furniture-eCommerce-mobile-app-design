import 'package:ecommarce/cart/cart_page.dart';
import 'package:ecommarce/home/home_page.dart';
import 'package:ecommarce/profile/profile_page.dart';
import 'package:ecommarce/wishlist/wish_page.dart';
import 'package:flutter/material.dart';

import 'package:ecommarce/util/constant.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;

  static const List<Widget> _widget_List = [
    HomePage(),
    My_Wish_Page(),
    My_Cart_Page(),
    My_Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widget_List.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: UtilConstant.shark,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: UtilConstant.shark,
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: UtilConstant.shark,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
              color: UtilConstant.shark,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        selectedItemColor: UtilConstant.shark,
        onTap: _onItemTapped,
      ),
    );
  }
}
