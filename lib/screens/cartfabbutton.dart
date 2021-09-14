import 'package:first_flutter_app/modules/cart.dart';
import 'package:first_flutter_app/screens/CardWidget.dart';
import 'package:first_flutter_app/screens/CartPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartFabButton extends StatefulWidget {
  @override
  _CartFabButtonState createState() => _CartFabButtonState();
}

class _CartFabButtonState extends State<CartFabButton> {
  bool isAdded = false;
  void setAdded() {
    setState(() {
      isAdded = true;
    });
  }

  void Navigate2Cart(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CartPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,cart,child){
      return FloatingActionButton.extended(
      onPressed: () {
        Navigate2Cart(context);
      },
      backgroundColor: Colors.orange,
      label: Text('${cart.cartList.length}'),
      icon: Icon(Icons.shopping_cart_outlined),
    );
    } );
  }
}

class CartList {
  List<CardWidget> cart = [];
  CartList(cart);
}
