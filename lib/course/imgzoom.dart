import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

// ignore: must_be_immutable
class Full extends StatefulWidget {
  String url;
  Full(this.url);
  @override
  _FullState createState() => _FullState();
}

class _FullState extends State<Full> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ExtendedImage.network(
                widget.url,
                fit: BoxFit.contain,
                //enableLoadState: false,
                mode: ExtendedImageMode.gesture,
                initGestureConfigHandler: (state) {
                  return GestureConfig(
                    minScale: 0.9,
                    animationMinScale: 0.7,
                    maxScale: 3.0,
                    animationMaxScale: 3.5,
                    speed: 1.0,
                    inertialSpeed: 100.0,
                    initialScale: 1.0,
                    inPageView: false,
                    initialAlignment: InitialAlignment.center,
                  );
                },
              )),
        ),
      ),
    );
  }
}
