import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:yoyo_player/yoyo_player.dart';

class YoyoLive extends StatefulWidget {
  @override
  _YoyoLiveState createState() => _YoyoLiveState();
}

class _YoyoLiveState extends State<YoyoLive> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          color: Colors.black,
          width: _size.width,
          height: _size.height,
          child: SafeArea(
            child: YoYoPlayer(
              aspectRatio: 16 / 9,
              url:
              // "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
              "https://stream8.itv.uz/sevimli/index.m3u8",
              // "https://player.vimeo.com/external/440218055.m3u8?s=7ec886b4db9c3a52e0e7f5f917ba7287685ef67f&oauth2_token_id=1360367101",
              // "https://sfux-ext.sfux.info/hls/chapter/105/1588724110/1588724110.m3u8",
              videoStyle: VideoStyle(
                play : Icon(Icons.pause),
                pause : Icon(Icons.play_arrow),
                fullscreen : Icon(Icons.fullscreen),
                forward : Icon(Icons.skip_next),
                backward : Icon(Icons.skip_previous),
              ),
              videoLoadingStyle: VideoLoadingStyle(
                loading: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SpinKitFadingCircle(
                        color: Colors.white,
                        size: 60.0,
                      ),
                      Text("Loading video"),
                    ],
                  ),
                ),
              ),
              onfullscreen: (t) {
              },
            ),
          ),
        ),
      ),
    );
  }
}

