import 'package:ecommarce/cart/cart_page.dart';
import 'package:ecommarce/dashboard/navbar/nav_bar_item.dart';
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
      body: _widget_List[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: UtilConstant.pampas,
        elevation: 0,
        child: SizedBox(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconBottomBar(
                    text: "Home",
                    icon: Icons.home_outlined,
                    selected: _selectedIndex == 0,
                    selectedColor: UtilConstant.shark,
                    unSelectedColor: UtilConstant.rollingstone,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    }),
                IconBottomBar(
                    text: "WishList",
                    icon: Icons.favorite_border_outlined,
                    selected: _selectedIndex == 1,
                    selectedColor: UtilConstant.shark,
                    unSelectedColor: UtilConstant.rollingstone,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    }),
                IconBottomBar(
                    text: "Cart",
                    icon: Icons.shopping_cart_outlined,
                    selected: _selectedIndex == 2,
                    selectedColor: UtilConstant.shark,
                    unSelectedColor: UtilConstant.rollingstone,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    }),
                IconBottomBar(
                    text: "Profile",
                    icon: Icons.person_outline_outlined,
                    selected: _selectedIndex == 3,
                    selectedColor: UtilConstant.shark,
                    unSelectedColor: UtilConstant.rollingstone,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
