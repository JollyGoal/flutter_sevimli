// import 'package:chewie/chewie.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
//
// class ChewieDemo extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _ChewieDemoState();
//   }
// }
//
// class _ChewieDemoState extends State<ChewieDemo> {
//   TargetPlatform _platform = TargetPlatform.android;
//   VideoPlayerController _videoPlayerController1;
//   ChewieController _chewieController;
//
//   @override
//   void initState() {
//     super.initState();
//     initializePlayer();
//   }
//
//   @override
//   void dispose() {
//     _videoPlayerController1.dispose();
//     _chewieController.dispose();
//     super.dispose();
//   }
//
//   Future<void> initializePlayer() async {
//     _videoPlayerController1 = VideoPlayerController.network(
//         'https://stream8.itv.uz/sevimli/index.m3u8');
//     await _videoPlayerController1.initialize();
//     _chewieController = ChewieController(
//       videoPlayerController: _videoPlayerController1,
//       autoPlay: true,
//       looping: true,
//       // Try playing around with some of these other options:
//
//       // showControls: false,
//       // materialProgressColors: ChewieProgressColors(
//       //   playedColor: Colors.red,
//       //   handleColor: Colors.blue,
//       //   backgroundColor: Colors.grey,
//       //   bufferedColor: Colors.lightGreen,
//       // ),
//       // placeholder: Container(
//       //   color: Colors.grey,
//       // ),
//       // autoInitialize: true,
//     );
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData.light().copyWith(
//         platform: _platform ?? Theme.of(context).platform,
//       ),
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: Column(
//           children: <Widget>[
//             Expanded(
//               child: Center(
//                 child: _chewieController != null &&
//                     _chewieController
//                         .videoPlayerController.value.initialized
//                     ? Chewie(
//                   controller: _chewieController,
//                 )
//                     : Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const [
//                     CircularProgressIndicator(),
//                     SizedBox(height: 20),
//                     Text('Loading'),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }