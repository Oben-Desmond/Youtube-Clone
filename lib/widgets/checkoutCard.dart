import 'package:flutter/material.dart';

class CheckOutCard extends StatelessWidget {
  var src =
      'https://static.cdprojektred.com/cms.cdprojektred.com/1x1_middle/4d906a86e3029d7fe811967268578a4412bb05f2-592x592.jpg';
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network(src),
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Text(
              'Movie Cart Movie Cart Movie CartMovie CartMovie Cart',
              style: TextStyle(color: Colors.grey[300], fontSize: 13),
            ),
          ),
          Expanded(
            child: Text(
              '200FCFA',
              style: TextStyle(color: Colors.orange[300]),
            ),
          )
        ],
      ),
    );
  }
}
