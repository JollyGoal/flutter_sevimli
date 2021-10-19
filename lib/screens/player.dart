// import 'package:flutter/material.dart';
// import 'package:better_player/better_player.dart';
//
// class LivePlayer extends StatefulWidget {
//   @override
//   _LivePlayerState createState() => _LivePlayerState();
// }
//
// class _LivePlayerState extends State<LivePlayer> {
//   BetterPlayerController _betterPlayerController;
//
//   void handleEvents(event) {
//     print("Better player event: ${event.betterPlayerEventType}");
//     if (event.betterPlayerEventType == BetterPlayerEventType.finished ||
//         event.betterPlayerEventType == BetterPlayerEventType.exception) {
//       setupDataSource();
//     }
//     else if (event.betterPlayerEventType == BetterPlayerEventType.initialized) {
//       if (!_betterPlayerController.isFullScreen)
//         _betterPlayerController.enterFullScreen();
//     }
//     else if (event.betterPlayerEventType == BetterPlayerEventType.progress) {
//       setState(() {
//
//       });
//       if (!_betterPlayerController.isFullScreen)
//         _betterPlayerController.enterFullScreen();
//     }
//   }
//
//   @override
//   void initState() {
//     BetterPlayerConfiguration betterPlayerConfiguration =
//         BetterPlayerConfiguration(
//       controlsConfiguration: BetterPlayerControlsConfiguration(
//         enableFullscreen: false,
//         enableSubtitles: false,
//       ),
//       errorBuilder: (context, errorMsg) => Center(
//         child: Text(
//           "Что-то пошло не так. Пожалуйста попробуйте позже.",
//           style: TextStyle(color: Colors.red),
//         ),
//       ),
//       autoPlay: true,
//       autoDetectFullscreenDeviceOrientation: true,
//       fullScreenByDefault: true,
//       // translations: [
//       //   BetterPlayerTranslations(
//       //     languageCode: "ru",
//       //     generalDefaultError: "Произошла ошибка. Пожалуйста попробуйте позже.",
//       //     generalNone: "Пусто",
//       //     generalDefault: "По умолчанию",
//       //     playlistLoadingNextVideo: "Загрузка следующего видео",
//       //     controlsLive: "Sevimli LIVE",
//       //     controlsNextVideoIn: "Следующее видео через",
//       //     overflowMenuPlaybackSpeed: "Скорость воспроизведения",
//       //     overflowMenuSubtitles: "Субтитры",
//       //     overflowMenuQuality: "Качество",
//       //   ),
//       // ],
//       fullScreenAspectRatio: (16 / 9),
//       playerVisibilityChangedBehavior: (visibilityFraction) =>
//           print(visibilityFraction),
//       allowedScreenSleep: false,
//       fit: BoxFit.contain,
//     );
//     BetterPlayerDataSource dataSource = BetterPlayerDataSource(
//         BetterPlayerDataSourceType.network,
//         // "https://streaming.sevimliplay.tv/eyAic2Vzc2lvbl9pZCI6ImFhMWQxNGJmLTA5ZGItNGJmZC04ZGY0LTdkOGIyNjU4MTMzMCIsICJkb21haW5fbmFtZSI6InN0cmVhbWluZy5zZXZpbWxpcGxheS50diIsICJpcF9hZGRyZXNzIjoiMTk1LjE1OC4yNC4xMTYiLCAiZXhwaXJhdGlvbl9kYXRlIjoiMjA1MC0wMi0wMlQxMjowMDowMFoiLCAic3RyZWFtX25hbWUiOiIxIiwgInN0cmVhbV9wYXRoIjoiL2lwX3Y1IiwgImRhdGFjZW50ZXIiOiJzZXYiLCAiZHJtIjoic3BidHZjYXMiLCAicHJvdG9jb2wiOiJobHMiIH0=/MCwCFDkKX1RQeMiZXukHUEtoJUfCR3hGAhRDf5LdOT4ZxIGPXzCOfJ0IuORf1Q/ip_v5/1.m3u8",
//         "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
//         // useHlsSubtitles: true,
//         liveStream: true);
//     _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
//     _betterPlayerController.setupDataSource(dataSource);
//     _betterPlayerController.addEventsListener((event) => handleEvents(event));
//     _betterPlayerController.setOverriddenAspectRatio(16/9);
//     super.initState();
//   }
//
//   void setupDataSource() {
//     BetterPlayerDataSource dataSource = BetterPlayerDataSource(
//         BetterPlayerDataSourceType.network,
//         "https://streaming.sevimliplay.tv/eyAic2Vzc2lvbl9pZCI6ImFhMWQxNGJmLTA5ZGItNGJmZC04ZGY0LTdkOGIyNjU4MTMzMCIsICJkb21haW5fbmFtZSI6InN0cmVhbWluZy5zZXZpbWxpcGxheS50diIsICJpcF9hZGRyZXNzIjoiMTk1LjE1OC4yNC4xMTYiLCAiZXhwaXJhdGlvbl9kYXRlIjoiMjA1MC0wMi0wMlQxMjowMDowMFoiLCAic3RyZWFtX25hbWUiOiIxIiwgInN0cmVhbV9wYXRoIjoiL2lwX3Y1IiwgImRhdGFjZW50ZXIiOiJzZXYiLCAiZHJtIjoic3BidHZjYXMiLCAicHJvdG9jb2wiOiJobHMiIH0=/MCwCFDkKX1RQeMiZXukHUEtoJUfCR3hGAhRDf5LdOT4ZxIGPXzCOfJ0IuORf1Q/ip_v5/1.m3u8",
//         // useHlsSubtitles: true,
//         liveStream: true);
//     _betterPlayerController.setupDataSource(dataSource);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size _size = MediaQuery.of(context).size;
//     return Container(
//       color: Colors.black,
//       width: _size.width,
//       height: _size.height,
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           BetterPlayer(
//             controller: _betterPlayerController,
//           ),
//           // FlatButton(
//           //     onPressed: setupDataSource,
//           //     child: Text(
//           //       "Перезагрузка",
//           //       style: const TextStyle(
//           //         color: Colors.white,
//           //         fontSize: 20,
//           //       ),
//           //     )),
//         ],
//       ),
//     );
//   }
// }
