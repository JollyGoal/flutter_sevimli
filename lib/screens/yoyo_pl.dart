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
              "https://streaming.sevimliplay.tv/eyAic2Vzc2lvbl9pZCI6ImFhMWQxNGJmLTA5ZGItNGJmZC04ZGY0LTdkOGIyNjU4MTMzMCIsICJkb21haW5fbmFtZSI6InN0cmVhbWluZy5zZXZpbWxpcGxheS50diIsICJpcF9hZGRyZXNzIjoiMTk1LjE1OC4yNC4xMTYiLCAiZXhwaXJhdGlvbl9kYXRlIjoiMjA1MC0wMi0wMlQxMjowMDowMFoiLCAic3RyZWFtX25hbWUiOiIxIiwgInN0cmVhbV9wYXRoIjoiL2lwX3Y1IiwgImRhdGFjZW50ZXIiOiJzZXYiLCAiZHJtIjoic3BidHZjYXMiLCAicHJvdG9jb2wiOiJobHMiIH0=/MCwCFDkKX1RQeMiZXukHUEtoJUfCR3hGAhRDf5LdOT4ZxIGPXzCOfJ0IuORf1Q/ip_v5/1.m3u8",
              // "https://bitdash-a.akamaihd.net/content/MI201109210084_1/m3u8s/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.m3u8",
              // "http://185.74.5.140:81/udp/239.15.15.15:5001",
              // "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
              // "https://stream8.itv.uz/sevimli/index.m3u8",
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

