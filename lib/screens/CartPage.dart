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
          actions: [],
          title: Text('Movie Cart', style: TextStyle(color: Colors.orange)),
        ),
        body: ListView(
          // padding: EdgeInsets.symmetric(horizontal: 10, vertical:10),
          children: [
           CheckOutCard(),
          ],
        ));
  }
}
