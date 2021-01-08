import 'package:flutter/material.dart';
import 'package:flutter_sevimli/config/palette.dart';
import 'package:flutter_sevimli/screens/screens.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int month = DateTime.now().month;
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Palette.scaffoldBackground,
      body: Container(
        width: _size.width,
        height: _size.height,
        child: Stack(
          children: [
            12==month || month== 2 || month == 1 ? ShaderMask(
              shaderCallback: (rect) => RadialGradient(
                center: Alignment.center,
                radius: 1.0,
                colors: <Color>[Colors.white, Palette.scaffoldBackground, Colors.white, ],
                tileMode: TileMode.mirror,
              ).createShader(rect),
              child: Lottie.asset("assets/lottie/snow-santa.json",
                  width: _size.width,
                  height: _size.height,
                  fit: BoxFit.cover,
                  frameRate: FrameRate(60.0)),
            ) : SizedBox.shrink(),
            SizedBox(
              width: _size.width,
              height: _size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset(
                      "assets/images/text.png",
                      width: 200,
                      height: 100,
                    ),
                    // child: Text(
                    //   "Sevimli",
                    //   style: const TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 50,
                    //     fontWeight: FontWeight.w600,
                    //   ),
                    // ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: RawMaterialButton(
                        padding: EdgeInsets.all(10.0),
                        elevation: 10.0,
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => YoyoLive())),
                        shape: CircleBorder(),
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.play_arrow,
                          size: 100.0,
                          color: Palette.scaffoldBackground,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
