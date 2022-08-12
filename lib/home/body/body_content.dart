import 'package:ecommarce/util/constant.dart';
import 'package:flutter/material.dart';

class GridMenuDesign extends StatelessWidget {
  String item_name;
  String image_url;
  double price;
  GridMenuDesign({
    Key? key,
    required this.item_name,
    required this.image_url,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        color: UtilConstant.rollingstone.withOpacity(0.4),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                color: UtilConstant.pampas,
                borderRadius: BorderRadius.circular(18.0),
                image: DecorationImage(
                  image: NetworkImage(
                    image_url,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              item_name,
              style: const TextStyle(
                fontSize: 20,
                color: UtilConstant.shark,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$$price",
                  style: const TextStyle(
                      fontSize: 20,
                      color: UtilConstant.shark,
                      fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: UtilConstant.cinnabar,
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: const Center(
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
