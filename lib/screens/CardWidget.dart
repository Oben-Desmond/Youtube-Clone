import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardWidget extends StatelessWidget {
  String name = 'Desmond Oben';
  String url = '';
  String views = '';
  String timeago = '';
  int randomNum = 0;
  List<MaterialColor> colors = [
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.lightBlue,
    Colors.lightGreen
  ];

  CardWidget(
      {this.url =
          'https://st.depositphotos.com/1597387/1984/i/600/depositphotos_19841901-stock-photo-asian-young-business-man-close.jpg',
      this.name = 'Desmond Oben',
      this.views = '1M',
      this.timeago = '1 month ago'}) {
    this.randomNum = ((timeago + name + views + url).length) % colors.length;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.network(url),
          padding: EdgeInsets.all(10),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CircleAvatar(
                  backgroundColor: colors[randomNum],
                  radius: 20,
                  child: Text(
                    name[0].toUpperCase(),
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Text(
                    'How to Apologize a guide to people that suck at it',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
                IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                    ))
              ]),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                SizedBox(
                  width: 50,
                  height: 10,
                ),
                Flexible(
                  child: Text(
                    '$name - $views views -$timeago',
                    style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                  ),
                )
              ]),
              Divider(
                color: Colors.grey[300],
              )
            ],
          ),
        )
      ],
    );
  }
}

List<CardWidget> postData = [
  CardWidget(
      name: 'Akumah Ndeh',
      url: 'https://images.unsplash.com/file-1628106544947-73e839ff1e0fimage',
      timeago: '3 Weeks Ago',
      views: '20M'),
  CardWidget(
      name: 'Larel Mathews',
      url: 'https://images.unsplash.com/file-1628106544947-73e839ff1e0fimage',
      timeago: '2 Weeks Ago',
      views: '20M'),
  CardWidget(
      name: 'Peter Parker',
      url: 'https://images.unsplash.com/file-1628106544947-73e839ff1e0fimage',
      timeago: '1 Weeks Ago',
      views: '20M'),
  CardWidget(
      name: 'Lesly Lebron',
      url: 'https://images.unsplash.com/file-1628106544947-73e839ff1e0fimage',
      timeago: '9 Weeks Ago',
      views: '20M'),
  CardWidget(
      name: 'Usain Bolt',
      url: 'https://images.unsplash.com/file-1628106544947-73e839ff1e0fimage',
      timeago: '20 months Ago',
      views: '20M'),
];
