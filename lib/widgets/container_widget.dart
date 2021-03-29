import 'package:DiantarAje/common/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Widget cardContainer(Widget child, {EdgeInsets margin, EdgeInsets padding, BoxConstraints boxConstraints}) {
//   return Container(
//     constraints: boxConstraints,
//     margin: padding == null ? EdgeInsets.all(10.0) : padding,
//     padding: padding == null ? EdgeInsets.all(20.0) : padding,
//     width: double.infinity,
//     child: child,
//     decoration: BoxDecoration(
//         color: ColorPalette.containerBackgroundColor,
//         borderRadius: new BorderRadius.circular(25.0),
//         boxShadow: [
//           BoxShadow(
//               color: ColorPalette.containerShadowColor,
//               spreadRadius: 1,
//               blurRadius: 8
//           ),
//         ]
//     ),
//   );
// }

Widget container(Widget child, {double width, double height, EdgeInsets padding, Color backgroundColor, BoxConstraints boxConstraints}){
  return Container(
    width: width,
    height: height,
    padding: padding == null ? EdgeInsets.all(10.0) : padding,
    constraints: boxConstraints,
    color: backgroundColor,
    child: child
  );
}

class CardContainer extends StatelessWidget{
  final Widget child;
  final EdgeInsets margin; 
  final EdgeInsets padding; 
  final BoxConstraints boxConstraints;

  CardContainer({
    this.child,
    this.margin,
    this.padding,
    this.boxConstraints,
  });

  @override
  Widget build(BuildContext context){
    return Container(
      constraints: boxConstraints,
      margin: padding == null ? EdgeInsets.all(10.0) : padding,
      padding: padding == null ? EdgeInsets.all(20.0) : padding,
      width: double.infinity,
      child: child,
      decoration: BoxDecoration(
          color: ColorPalette.containerBackgroundColor,
          borderRadius: new BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
                color: ColorPalette.containerShadowColor,
                spreadRadius: 1,
                blurRadius: 8
            ),
          ]
      ),
    );
  }
}

// class Container extends StatelessWidget{
//   final Widget child;
//   final double width;
//   final double height;
//   final EdgeInsets padding;
//   final Color backgroundColor;
//   final BoxConstraints boxConstraints;

//   Container({
//     this.child,
//     this.width,
//     this.height,
//     this.padding,
//     this.backgroundColor,
//     this.boxConstraints,
//   });

//   @override
//   Widget build(BuildContext context){
//     return Container(
//       width: width,
//       height: height,
//       padding: padding == null ? EdgeInsets.all(10.0) : padding,
//       constraints: boxConstraints,
//       color: backgroundColor,
//       child: child
//     );
//   }
// }


