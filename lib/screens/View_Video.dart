import 'package:first_flutter_app/screens/CardWidget.dart';
import 'package:flutter/material.dart';

class ViewVideo extends StatelessWidget {
  CardWidget cardInfo= CardWidget(name:' ',timeago: '',title: '',url: '',views: '',);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Image.network(
               cardInfo.url),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child:Text(cardInfo.title))
        ],
      ),
    );
  }
}
