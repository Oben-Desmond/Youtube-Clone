import 'package:flutter/material.dart';

class DownloadsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black54,
        child: SafeArea(
            child: ListView(children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(children: [
                DownloadCard(),
                DownloadCard(),
              ]))
        ])));
  }
}

class DownloadCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(flex: 2, child: Image.asset('images/movie.jpg')),
            Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'name of movie downloaded',
                    style: TextStyle(),
                  ),
                )),
            Expanded(
                flex: 1,
                child:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)))
          ],
        ),
        Divider()
      ],
    ));
  }
}
