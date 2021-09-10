import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: Colors.green,
          backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/80077358?v=4'),
        ),
        SizedBox(height: 30,),
        Container(
          padding: EdgeInsets.all(10),
            child: Row(
              
          children: [
            Expanded(child: Icon(Icons.person)),
            Expanded(
              flex: 2,
              child: Text('Desmond Oben')),
          ],
        ))
        ,Container(
          padding: EdgeInsets.all(10),
            child: Row(
              
          children: [
            Expanded(child: Icon(Icons.mail_outline)),
            Expanded(
              flex: 2,
              child: Text('obend678@gmail.com')),
          ],
        )),Container(
          padding: EdgeInsets.all(10),
            child: Row(
              
          children: [
            Expanded(child: Icon(Icons.call_outlined)),
            Expanded(
              flex: 2,
              child: Text('+237 678320028')),
          ],
        )),
       
      ]),
    );
  }
}
