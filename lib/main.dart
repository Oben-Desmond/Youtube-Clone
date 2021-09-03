import 'package:first_flutter_app/screens/CardWidget.dart';
import 'package:first_flutter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String text = 'my demo app';
  var url =
      'https://st.depositphotos.com/1597387/1984/i/600/depositphotos_19841901-stock-photo-asian-young-business-man-close.jpg';
  String src =
      'https://images.unsplash.com/photo-1596247717921-f206bdb2ae64?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8dmliaW5nfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Home'),
            backgroundColor: Colors.red[900],
            actions: [
              Icon(
                Icons.search,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.menu_rounded),
              SizedBox(
                width: 10,
              )
            ],
          ),
          body: ListView(
            children: [
              CardWidget(),
              CardWidget(),
              CardWidget(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => {},
            child: Icon(Icons.video_camera_front),
            backgroundColor: Colors.red[900],
          ),
        ));
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
