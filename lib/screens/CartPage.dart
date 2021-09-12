import 'dart:ui';
import 'package:first_flutter_app/screens/BuyMovies.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:first_flutter_app/widgets/checkoutCard.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void deleteEls(int index) {
    setState(() {
      CartItems.removeAt(index);
    });
  }

  List CartItems = [
    CheckOutCard(),
    CheckOutCard(),
    CheckOutCard(),
    CheckOutCard()
  ];

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
              ...CartItems.map((widget) => (TextButton(
                    onPressed: () => {deleteEls(0)},
                    child: widget,
                    style: TextButton.styleFrom(primary: Colors.orange),
                  ))),
              SizedBox(height: 18),
              Container(
                padding: EdgeInsets.all(13),
                child: Container(
                    padding: EdgeInsets.all(13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Total Cost',
                          // style: TextStyle(color: Colors.orange),
                        ),
                        Text(
                          '${200 * CartItems.length} FCFA',
                          style: TextStyle(color: Colors.orange),
                        )
                      ],
                    )),
              ),
              Container(
                  padding: EdgeInsets.all(13),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BuyMovies()));
                    },
                    style: OutlinedButton.styleFrom(primary: Colors.orange),
                    child: Text(
                      'BUY MOVIES',
                      style: TextStyle(color: Colors.orange),
                    ),
                  )),
            ],
          )),
    );
  }
}
