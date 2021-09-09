import 'dart:math';

import 'package:first_flutter_app/screens/CardWidget.dart';
import 'package:first_flutter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        theme:  ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark, 
      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      
   
        home: DefaultTabController(
          length:3,
          child: Scaffold(
            // backgroundColor: Colors.black26,
            appBar: AppBar(
              title: Text('Vizu'),
              backgroundColor: Colors.black87,
              systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.orange),
              bottom:  TabBar(
                indicatorColor: Colors.orange,
                labelColor: Colors.orange,
                tabs: [
                  Tab(text: 'Top Movies',),
                  Tab(text: 'Downloads',),
                  Tab(text: 'Account'),
                  // Tab(icon: Icon(Icons.directions_bike)),
                ],
              ),
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
                            'https://i.ytimg.com/vi_webp/VSB4wGIdDwo/maxresdefault.webp',
                        timeago: '3 Weeks Ago',
                        views: 'Without Re', title: 'Wonder Woman Official Movie'),
                    CardWidget(
                        name: 'Larel Mathews',
                        url: 'https://miro.medium.com/max/700/1*IcdX73amafu9QGM-43I4WQ.jpeg',
                        timeago: '2 Weeks Ago',
                        views: '20M', title: 'Without Remourse Tom Clancy'),
                    CardWidget(
                        name: 'Peter Parker',
                        url:
                            'https://static.cdprojektred.com/cms.cdprojektred.com/1x1_middle/4d906a86e3029d7fe811967268578a4412bb05f2-592x592.jpg',
                        timeago: '1 Weeks Ago',
                        views: '20M', title: 'The Witcher '),
                    CardWidget(
                        name: 'Lesly Lebron',
                        url:
                            'https://i.ytimg.com/vi/JrndifJj2A0/maxresdefault.jpg',
                        timeago: '9 Weeks Ago',
                        views: '20M', title: 'Sacrifice of Tears - season 5'),
                    CardWidget(
                        name: 'Zilbert',
                        url:
                            'https://i.ytimg.com/vi/YEKqbO3geUM/maxresdefault.jpg',
                        timeago: '20 months Ago',
                        views: '20M', title: 'Battle of Royalty' ),
                  ],
                ),
                Icon(Icons.cabin),
                Icon(Icons.cabin),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => {},
              child: Icon(Icons.shopping_cart_outlined),
              backgroundColor: Colors.orange,
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
