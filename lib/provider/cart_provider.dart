import 'package:flutter/foundation.dart';

import '../model/home_item_model.dart';

class CartProvider extends ChangeNotifier {
  List<HomeItemModel> cartList = <HomeItemModel>[];
  add(int item_id, String item_name, String item_imge, double item_price) {
    cartList.add(HomeItemModel(
        item_id: item_id,
        item_name: item_name,
        item_imge: item_imge,
        item_price: item_price));
    notifyListeners();
  }

  del(int index) {
    cartList.removeAt(index);
    notifyListeners();
  }
}
