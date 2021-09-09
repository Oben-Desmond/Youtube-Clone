import 'dart:math';

import 'package:first_flutter_app/screens/CardWidget.dart';
import 'package:first_flutter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  var rng = new Random();
  for (var i = 0; i < 10; i++) {
    print(rng.nextInt(100));
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length:3,
          child: Scaffold(
            backgroundColor: Colors.black26,
            appBar: AppBar(
              title: Text('Home'),
              backgroundColor: Colors.black12,
              
              actions: [
                Icon(
                  Icons.search,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.more_vert),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            body: TabBarView(
              
              children: [
                ListView(
                  children: [
                    CardWidget(
                        name: 'Akumah Ndeh',
                        url:
                            'https://images.unsplash.com/file-1628106544947-73e839ff1e0fimage',
                        timeago: '3 Weeks Ago',
                        views: '20M'),
                    CardWidget(
                        name: 'Larel Mathews',
                        url:
                            'https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZXZlbnR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                        timeago: '2 Weeks Ago',
                        views: '20M'),
                    CardWidget(
                        name: 'Peter Parker',
                        url:
                            'https://images.unsplash.com/photo-1508997449629-303059a039c0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGV2ZW50fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                        timeago: '1 Weeks Ago',
                        views: '20M'),
                    CardWidget(
                        name: 'Lesly Lebron',
                        url:
                            'https://images.unsplash.com/photo-1560523160-754a9e25c68f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGV2ZW50fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                        timeago: '9 Weeks Ago',
                        views: '20M'),
                    CardWidget(
                        name: 'Usain Bolt',
                        url:
                            'https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg)/origin-imgresizer.eurosport.com/2021/04/05/3023585-62027428-2560-1440.jpg',
                        timeago: '20 months Ago',
                        views: '20M'),
                  ],
                ),
                Icon(Icons.cabin),
                Icon(Icons.cabin),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => {},
              child: Icon(Icons.video_camera_front),
              backgroundColor: Colors.orange,
            ),
            bottomNavigationBar: TabBar(
                indicatorColor: Colors.orange,
                labelColor: Colors.orange,
                tabs: [
                  Tab(icon: Icon(Icons.movie_filter_outlined,textDirection: TextDirection.rtl,),text: 'Top Movies',),
                  Tab(icon: Icon(Icons.download_outlined), text: 'Downloads',),
                  Tab(icon: Icon(Icons.person_outline_outlined),text: 'Account'),
                  // Tab(icon: Icon(Icons.directions_bike)),
                ],
              ),
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
