import 'package:first_flutter_app/screens/CardWidget.dart';
import 'package:first_flutter_app/screens/VideoScreen.dart';
import 'package:flutter/material.dart';

class ViewVideo extends StatefulWidget {

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
  _ViewVideoState createState() => _ViewVideoState(info: cardInfo);
}

class _ViewVideoState extends State<ViewVideo> {
  bool play = false;
   CardWidget cardInfo = CardWidget(
    name: ' ',
    timeago: '',
    title: 'Wonder Woman',
    url: 'https://i.ytimg.com/vi_webp/VSB4wGIdDwo/maxresdefault.webp',
    views: '',
  );
  
  _ViewVideoState({info}) {
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
            VideoPage(cardInfo),
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
                  'Inside this class, the build function is overridden which takes the BuildContext as the parameter. This build function returns a widget where we design the UI of the app. Since it is a stateful widget This build function returns a widget where we design the UI of the app. Since it is a stateful widget the build function is called many times which creates the entire UI once again with all the changes the build function is called many times which creates the entire UI once again with all the changes. ',
                  style: TextStyle(color: Colors.grey[300]),
                )),
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

  // @override
  // void dispose() {
  //   super.dispose();
  //   _controller.dispose();
  // }
}
