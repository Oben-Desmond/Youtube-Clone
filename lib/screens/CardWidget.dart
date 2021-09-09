import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardWidget extends StatelessWidget {
  String name = 'Desmond Oben';
  String url = '';
  String views = '';
  String timeago = '';
  int randomNum = 0;
  String title = '';
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
      this.timeago = '1 month ago',
      this.title = ''}) {
    this.randomNum = ((timeago + name + views + url).length) % colors.length;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child:
     Column(
      
      children: [
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(url),
          ),
          padding: EdgeInsets.all(10),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CircleAvatar(
                  backgroundColor: colors[randomNum],
                  radius: 17,
                  child: Text(
                    name[0].toUpperCase(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Text(
                    this.title,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70),
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
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        )
      ],
    ),);
  }
}

List<CardWidget> postData = [
  CardWidget(
      name: 'Akumah Ndeh',
      url: 'https://i.ytimg.com/vi_webp/VSB4wGIdDwo/maxresdefault.webp',
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
