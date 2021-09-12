import 'dart:ui';

import 'package:first_flutter_app/widgets/checkoutCard.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        actions: [],
        title: Text('Movie Cart', style: TextStyle(color: Colors.orange)),
      ),
      body: Container(
        color: Colors.black87,
          child: ListView(
        // padding: EdgeInsets.symmetric(horizontal: 10, vertical:10),
        children: [
          SizedBox(height: 14),
          CheckOutCard(),
          CheckOutCard(),
          CheckOutCard(),
          SizedBox(height: 18),
          Container(
            padding: EdgeInsets.all(13),
            child: Container(
                padding: EdgeInsets.all(13),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Total Cost',
                      // style: TextStyle(color: Colors.orange),
                    )),
                    Expanded(
                        child: Text(
                      '600 FCFA',
                      style: TextStyle(color: Colors.orange),
                    ))
                  ],
                )),
          ),
          Container(
              padding: EdgeInsets.all(13),
              child: OutlinedButton(
                onPressed: () => {},
                style: OutlinedButton.styleFrom(primary: Colors.orange),
                child: Text(
                  'BUY MOVIES',
                  style: TextStyle(color: Colors.orange),
                ),
              ))
        ],
      )),
    );
  }
}
