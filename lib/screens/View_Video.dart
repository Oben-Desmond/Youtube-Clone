import 'package:first_flutter_app/screens/CardWidget.dart';
import 'package:flutter/material.dart';

class ViewVideo extends StatelessWidget {
  CardWidget cardInfo = CardWidget(
    name: ' ',
    timeago: '',
    title: 'Wonder Woman',
    url: 'https://i.ytimg.com/vi_webp/VSB4wGIdDwo/maxresdefault.webp',
    views: '',
  );
  ViewVideo({info}) {
    cardInfo = info;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black45,
        child: ListView(
          children: [
            //  Container(child:Video_PLayer()) ,
            Stack(
              children: [
                Container(
                    height: 200,
                    child: Center(
                      child: Image.network(cardInfo.url),
                    )),
                Container(
                  color: Colors.black.withOpacity(0.7),
                  height: 200,
                  // width: 500,
                ),
                Column(children: [
                  Text(cardInfo.title, style: TextStyle(color: Colors.grey),),
                  Center(
                    heightFactor: 2,
                    child: IconButton(
                      onPressed: () => {},
                      icon: Icon(Icons.play_circle),
                      color: Colors.orange.withOpacity(0.3),
                      iconSize: 60,
                    ),
                  )
                ]),
                Positioned(child: Text( '2:00', style: TextStyle(color: Colors.grey)),bottom: 10,right: 20,)
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Flexible(
                          child: Text(
                    cardInfo.title,
                    style: TextStyle(fontSize: 15),
                  ))),
                  TextButton.icon(
                      onPressed: () => {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.red[600],
                      ),
                      label: Text('200K',
                          style: TextStyle(
                            color: Colors.white,
                          )))
                ],
              ),
            ),
            Divider(
              color: Colors.orange[300],
            ),
            Container(
              child: Text('Description'),
              padding: EdgeInsets.all(10),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Text(
                    'Inside this class, the build function is overridden which takes the BuildContext as the parameter. This build function returns a widget where we design the UI of the app. Since it is a stateful widget This build function returns a widget where we design the UI of the app. Since it is a stateful widget the build function is called many times which creates the entire UI once again with all the changes the build function is called many times which creates the entire UI once again with all the changes. ',style: TextStyle(color: Colors.grey[300]),)),
            Divider(
              color: Colors.orange[300],
              indent: 40,
              endIndent: 40,
            ),
            Container(
              child: Text('Comments'),
              padding: EdgeInsets.all(10),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Icon(
          Icons.download,
          color: Colors.white,
        ),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
