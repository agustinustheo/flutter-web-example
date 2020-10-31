import 'package:DiantarAje/common/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget background(Widget child, {AppBar appBar}) {
  return Scaffold(
      appBar: appBar,
      backgroundColor: ColorPalette.backgroundPrimaryColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -500,
            left: -300,
            child: bigCircle(ColorPalette.backgroundSecondaryColor),
          ),
          Positioned(
            bottom: -500,
            right: -300,
            child: bigCircle(ColorPalette.backgroundThirdColor),
          ),
          Positioned.fill(
            child: Container(
              child: Center(child: SingleChildScrollView(child: child)),
            ),
          ),
        ],
      ));
}

Widget bigCircle(Color color) {
  return new Container(
    width: 800.0,
    height: 750.0,
    decoration: new BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    ),
  );
}

Widget plainBackground(Widget child, {AppBar appBar}) {
  return Scaffold(
    appBar: appBar,
    backgroundColor: ColorPalette.backgroundPrimaryColor,
    body: Stack(
      children: [
        Positioned.fill(
          child: Container(
            child: Center(child: SingleChildScrollView(child: child)),
          ),
        ),
      ],
    )
  );
}
