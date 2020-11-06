import 'package:DiantarAje/common/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget cardContainer(Widget child, {EdgeInsets margin, EdgeInsets padding, BoxConstraints boxConstraints}) {
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