import 'dart:async';

import 'package:flutter/material.dart'; 

class BuyMovies extends StatefulWidget {
  @override
  _BuyMoviesState createState() => _BuyMoviesState();
}

class _BuyMoviesState extends State<BuyMovies> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wikipedia Explorer'),
          // This drop down menu demonstrates that Flutter widgets can be shown over the web view.
          actions: <Widget>[
            // NavigationControls(_controller.future),
            // Menu(_controller.future, () => _favorites),
          ],
        ),
        body: Center(
          child: Text('Wikipedia Explorer'),
        ));
    // floatingActionButton: _bookmarkButton(),
  }
}
