import 'dart:math';

import 'package:first_flutter_app/screens/Account.dart';
import 'package:first_flutter_app/screens/CardWidget.dart';
import 'package:first_flutter_app/screens/Downloads.dart';
import 'package:first_flutter_app/screens/LoginPage.dart';
import 'package:first_flutter_app/screens/cartfabbutton.dart';
import 'package:first_flutter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'modules/cart.dart';

void main() {
  var rng = new Random();
  for (var i = 0; i < 10; i++) {
    print(rng.nextInt(100));
  }
  runApp(ChangeNotifierProvider(
    create: (context)=>Cart(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
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
          length: 3,
          child: Scaffold(
            // backgroundColor: Colors.black26,
            appBar: AppBar(
              title: Text('Vizu'),
              backgroundColor: Colors.black87,
              systemOverlayStyle:
                  SystemUiOverlayStyle(statusBarColor: Colors.orange),
              bottom: TabBar(
                indicatorColor: Colors.orange,
                labelColor: Colors.orange,
                tabs: [
                  Tab(
                    text: 'Top Movies',
                  ),
                  Tab(
                    text: 'Downloads',
                  ),
                  Tab(text: 'Account'),
                  // Tab(icon: Icon(Icons.directions_bike)),
                ],
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                    )),
                SizedBox(
                  width: 10,
                ),
                TopMenu(),
                SizedBox(
                  width: 40,
                )
              ],
            ),
            body: TabBarView(
              children: [
                ListView(
                  children: [...VidCards().data],
                ),
                DownloadsPage(),
                AccountPage(),
              ],
            ),
            floatingActionButton: CartFabButton(),
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

class VidCards {
  List<Widget> data = [
    CardWidget(
        name: 'Akumah Ndeh',
        url: 'https://i.ytimg.com/vi_webp/VSB4wGIdDwo/maxresdefault.webp',
        timeago: '3 Weeks Ago',
        views: 'Without Re',
        title: 'Wonder Woman Official Movie'),
    CardWidget(
        name: 'Larel Mathews',
        url: 'https://miro.medium.com/max/700/1*IcdX73amafu9QGM-43I4WQ.jpeg',
        timeago: '2 Weeks Ago',
        views: '20M',
        title: 'Without Remourse Tom Clancy'),
    CardWidget(
        name: 'Peter Parker',
        url:
            'https://static.cdprojektred.com/cms.cdprojektred.com/1x1_middle/4d906a86e3029d7fe811967268578a4412bb05f2-592x592.jpg',
        timeago: '1 Weeks Ago',
        views: '20M',
        title: 'The Witcher '),
    CardWidget(
        name: 'Lesly Lebron',
        url: 'https://i.ytimg.com/vi/JrndifJj2A0/maxresdefault.jpg',
        timeago: '9 Weeks Ago',
        views: '20M',
        title: 'Sacrifice of Tears - season 5'),
    CardWidget(
        name: 'Zilbert',
        url: 'https://i.ytimg.com/vi/YEKqbO3geUM/maxresdefault.jpg',
        timeago: '20 months Ago',
        views: '20M',
        title: 'Battle of Royalty'),
  ];
  VidCards();
}

class TopMenu extends StatelessWidget {
  void navigateTo(var value, BuildContext context) {
    print(value);
    switch (value) {
      case 4:
        pushNav(context, LoginPage());

        break;
      default:
        return;
    }
  }

  void pushNav(BuildContext context, Widget widget) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        child: Icon(Icons.more_vert),
        onSelected: (value) {
          navigateTo(value, context);
        },
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              child: Text('Settings'),
              value: 1,
            ),
            PopupMenuItem(
              child: Text('History'),
              value: 2,
            ),
            PopupMenuItem(
              child: Text('Wish List'),
              value: 3,
            ),
            PopupMenuItem(
              child: Text('Logout'),
              value: 4,
            ),
          ];
        });
  }
}
