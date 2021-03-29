import 'package:DiantarAje/common/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Widget background(Widget child, {AppBar appBar}) {
//   return Scaffold(
//       appBar: appBar,
//       backgroundColor: ColorPalette.backgroundPrimaryColor,
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Positioned(
//             top: -500,
//             left: -300,
//             child: bigCircle(ColorPalette.backgroundSecondaryColor),
//           ),
//           Positioned(
//             bottom: -500,
//             right: -300,
//             child: bigCircle(ColorPalette.backgroundThirdColor),
//           ),
//           Positioned.fill(
//             child: Container(
//               child: Center(child: SingleChildScrollView(child: child)),
//             ),
//           ),
//         ],
//       ));
// }

// Widget bigCircle(Color color) {
//   return new Container(
//     width: 800.0,
//     height: 750.0,
//     decoration: new BoxDecoration(
//       color: color,
//       shape: BoxShape.circle,
//     ),
//   );
// }

// Widget plainBackground(Widget child, {AppBar appBar, bool isCenter = true}) {
//   return Scaffold(
//     appBar: appBar,
//     backgroundColor: ColorPalette.backgroundPrimaryColor,
//     body: Stack(
//       children: [
//         Positioned.fill(
//           child: Container(
//             child: isCenter ? Center(child: SingleChildScrollView(child: child)) : SingleChildScrollView(child: child),
//           ),
//         ),
//       ],
//     )
//   );
// }

class Background extends StatelessWidget{
  final Widget child; 
  final AppBar appBar;

  Background({
    this.child,
    this.appBar,
  });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: appBar,
      backgroundColor: ColorPalette.backgroundPrimaryColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -500,
            left: -300,
            child: BigCircle(color: ColorPalette.backgroundSecondaryColor),
          ),
          Positioned(
            bottom: -500,
            right: -300,
            child: BigCircle(color: ColorPalette.backgroundThirdColor),
          ),
          Positioned.fill(
            child: Container(
              child: Center(child: SingleChildScrollView(child: child)),
            ),
          ),
        ],
      ));
  }
}

class BigCircle extends StatelessWidget{
  final Color color;

  BigCircle({
    this.color
  });

  @override
  Widget build(BuildContext context){
    return new Container(
      width: 800.0,
      height: 750.0,
      decoration: new BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
  
}

class PlainBackground extends StatelessWidget{
  final Widget child;
  final AppBar appBar;
  final bool isCenter;

  PlainBackground({
    this.child,
    this.appBar,
    this.isCenter = true,
  });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: appBar,
      backgroundColor: ColorPalette.backgroundPrimaryColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              child: isCenter ? Center(child: SingleChildScrollView(child: child)) : SingleChildScrollView(child: child),
            ),
          ),
        ],
      )
    );
  }
  
}