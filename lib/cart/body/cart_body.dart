// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommarce/util/button_design.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ecommarce/provider/cart_provider.dart';
import 'package:ecommarce/util/constant.dart';

class CartBody extends StatefulWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, value, child) {
        double totalprice = 0;
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView.builder(
                itemCount: value.cartList.length,
                itemBuilder: ((context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 8.0, bottom: 2.0),
                    decoration: BoxDecoration(
                      color: UtilConstant.pampas,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    value.cartList[index].item_imge,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                value.cartList[index].item_name,
                                style: const TextStyle(
                                  color: UtilConstant.shark,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\$${value.cartList[index].item_price}",
                                style: const TextStyle(
                                  color: UtilConstant.shark,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const CountWidget(),
                                    const SizedBox(
                                      width: 70,
                                    ),
                                    Icon(
                                      Icons.delete_outline,
                                      color: UtilConstant.cinnabar
                                          .withOpacity(0.5),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Positioned(
              height: 150,
              width: MediaQuery.of(context).size.width,
              bottom: 0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        child: const Text(
                          "Total Price",
                          style: TextStyle(
                            fontSize: 25,
                            color: UtilConstant.shark,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: const Text(
                          "\$256.00",
                          style: TextStyle(
                            fontSize: 25,
                            color: UtilConstant.shark,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ButtonDesign(
                    text: 'Checkout',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class CountWidget extends StatelessWidget {
  const CountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Center(
            child: Text(
              "-",
              textAlign: TextAlign.center,
              style: TextStyle(color: UtilConstant.shark, fontSize: 24),
            ),
          ),
        ),
        const Text(
          "01",
          style: TextStyle(color: UtilConstant.shark, fontSize: 18),
        ),
        Container(
          height: 30,
          width: 30,
          margin: const EdgeInsets.only(left: 8),
          decoration: BoxDecoration(
            color: UtilConstant.cinnabar,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Center(
            child: Text(
              "+",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 21),
            ),
          ),
        ),
      ],
    );
  }
}
