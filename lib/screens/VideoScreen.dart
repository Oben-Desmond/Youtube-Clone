import 'package:first_flutter_app/screens/CardWidget.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  CardWidget info;
  VideoPage(this.info);
  @override
  _VideoPageState createState() => _VideoPageState(info);
}

class _VideoPageState extends State<VideoPage> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  CardWidget cardInfo;

  _VideoPageState(this.cardInfo) {}
  @override
  initState() {
    super.initState();
    // _controller =  VideoPlayerController.network(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
    //   ..initialize().then((value) {});
    _controller = VideoPlayerController.asset('images/movie.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();

    setState(() {
      _initializeVideoPlayerFuture.then((value) {
        // _controller.play();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 200,
            child: Center(
                child: Center(
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container(
                      child: Text('initializing video PLAYER'),
                    ),
            ))),
        _controller.value.isPlaying
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    print('pause');
                    _controller.pause();

                    // _controller.setVolume(volume);
                  });
                },
                child: Container(
                  height: 200,
                   color: Colors.black.withOpacity(0),
                ),

                // width: 500,
              )
            : Container(
                color: Colors.black.withOpacity(0.7),
                height: 200,
                // width: 500,
              ),
        Positioned(
          top: 60,
          left: 130,
          child: !_controller.value.isPlaying ?FloatingActionButton(
            backgroundColor: _controller.value.isPlaying
                ? Colors.white.withOpacity(0)
                : Colors.orange.withOpacity(0.7),
            onPressed: () {
              setState(() {
                print('play');
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();

                // _controller.setVolume(volume);
              });
            },
            child: Icon(
              _controller.value.isPlaying
                  ? Icons.pause_outlined
                  : Icons.play_arrow_outlined,
            ),
          ):Text(''),
        ),
        Column(children: [
          Text(
            cardInfo.title,
            style: TextStyle(color: Colors.grey),
          ),
          // play
          //     ? Center(
          //         heightFactor: 2,
          //         child: IconButton(
          //           onPressed: () {
          //             setState() {
          //               play = true;
          //             }
          //           },
          //           icon: Icon(Icons.play_circle),
          //           color: Colors.orange.withOpacity(0.3),
          //           iconSize: 60,
          //         ),
          //       )
          //     : Text('')
        ]),
        Positioned(
          child: Text('2:00', style: TextStyle(color: Colors.grey)),
          bottom: 10,
          right: 20,
        )
      ],
    );
  }
}
