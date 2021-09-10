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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //  Container(child:Video_PLayer()) ,
          Stack(
            children: [
              Container(child: Image.asset('images/movie.jpg')),
              Column(children: [
                Text(cardInfo.title),
                Center(
                  heightFactor: 1.5,
                  child: IconButton(
                    onPressed: () => {},
                    icon: Icon(Icons.play_circle),
                    color: Colors.orange,
                    iconSize: 60,
                  ),
                )
              ])
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  child: Text(
                cardInfo.title,
                style: TextStyle(fontSize: 18),
              )),
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
          Divider(
            height: 2,
          ),
          Container(
            child: Text('Description'),
            padding: EdgeInsets.all(10),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Text(
                  'Inside this class, the build function is overridden which takes the BuildContext as the parameter. This build function returns a widget where we design the UI of the app. Since it is a stateful widget This build function returns a widget where we design the UI of the app. Since it is a stateful widget the build function is called many times which creates the entire UI once again with all the changes the build function is called many times which creates the entire UI once again with all the changes. ')),
          Divider(
            height: 2,
          ),
          Container(
            child: Text('Comments'),
            padding: EdgeInsets.all(10),
          ),
        ],
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
