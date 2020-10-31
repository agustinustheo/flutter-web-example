import 'package:DiantarAje/common/colors.dart';
import 'package:DiantarAje/widgets/text_widget.dart';
import 'package:flutter/material.dart';

Widget buttonBase(Function function, {String text, Icon icon, double radius}){
  return FlatButton(
    padding: EdgeInsets.all(15.0),
    color: ColorPalette.buttonColor,
    splashColor: ColorPalette.buttonSplashColor,
    onPressed: function,
    child: text == null? icon : normalText(text, color: ColorPalette.buttonTextColor),
    shape: RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(radius??10.0)
    ),
  );
}

Widget button(Function function, {String text, Icon icon, double radius}){
  return buttonBase(function, text: text, icon: icon, radius: radius);
}

Widget helpbutton(Function function, {String text, Icon icon, double radius}){
  return SizedBox(
    width: 70,
    child: buttonBase(function, text: text, icon: icon, radius: radius),
  );
}

Widget fullButton(Function function, {String text, Icon icon, double radius}){
  return SizedBox(
    width: double.infinity,
    child: buttonBase(function, text: text, icon: icon, radius: radius),
  );
}