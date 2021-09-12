import 'package:first_flutter_app/screens/CardWidget.dart';
import 'package:first_flutter_app/screens/CartPage.dart';
import 'package:flutter/material.dart';

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
    return !isAdded
        ? FloatingActionButton(
            onPressed: () {
              setAdded();
              Navigate2Cart(context);
            },
            child: Icon(Icons.shopping_cart_outlined),
            backgroundColor: Colors.orange,
          )
        : FloatingActionButton.extended(
            onPressed: () {
              Navigate2Cart(context);
              setState(() {
                isAdded = !true;
              });
            },
            label: Text('1'),
            icon: Icon(Icons.shopping_cart_outlined),
            backgroundColor: Colors.lightGreen,
          );
  }
}

class CartList {
  List<CardWidget> cart = [];
  CartList(cart);
}
