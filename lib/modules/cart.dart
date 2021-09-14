import 'package:first_flutter_app/widgets/checkoutCard.dart';
import 'package:flutter/widgets.dart';

class Cart extends ChangeNotifier {
  List<CheckOutCard> cartList = [];

  void addToList(CheckOutCard item) {
    cartList.add(item);
    notifyListeners();
  }

  void removeFromList(int index) {
    cartList.removeAt(index);
    notifyListeners();
  }

  void clearList() {
    cartList.clear();
    notifyListeners();
  }
}
