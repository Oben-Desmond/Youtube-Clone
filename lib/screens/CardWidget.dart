import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardWidget extends StatelessWidget {

   final url =
      'https://st.depositphotos.com/1597387/1984/i/600/depositphotos_19841901-stock-photo-asian-young-business-man-close.jpg';
  final src =
      'https://images.unsplash.com/photo-1596247717921-f206bdb2ae64?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dmliaW5nfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  
  @override
  Widget build(BuildContext context) {

    return Column(children: [
      Container(
                child: Image.network(src),
                padding: EdgeInsets.all(10),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.indigo[900],
                            radius: 20,
                            child: Text(
                              'H',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 23),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Text(
                              'How to Apologize a guide to people that suck at it',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                          )
                        ]),
                          SizedBox(height: 10,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 50,height: 10,),
                          Flexible(
                            child: Text(
                              'Super woman - 1.Mk views -1 month Ago',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.grey[500]),
                            ),
                          )
                        ]),
                        Divider(color: Colors.grey[300],)
                  ],
                ),
              )
    ],);
  }
}