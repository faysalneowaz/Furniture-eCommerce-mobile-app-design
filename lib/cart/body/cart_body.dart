import 'package:ecommarce/provider/cart_provider.dart';
import 'package:ecommarce/util/constant.dart';
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
    return Consumer<CartProvider>(
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
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
                        color: Colors.amber,
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
                  ],
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
