import 'package:DiantarAje/common/colors.dart';
import 'package:DiantarAje/widgets/text_widget.dart';
import 'package:flutter/material.dart';

// Widget buttonBase(Function function, {String text, Icon icon, double radius}){
//   return FlatButton(
//     padding: EdgeInsets.all(15.0),
//     color: ColorPalette.buttonColor,
//     splashColor: ColorPalette.buttonSplashColor,
//     onPressed: function,
//     child: text == null? icon : normalText(text, color: ColorPalette.buttonTextColor),
//     shape: RoundedRectangleBorder(
//       borderRadius: new BorderRadius.circular(radius??10.0)
//     ),
//   );
// }

// Widget button(Function function, {String text, Icon icon, double radius}){
//   return ButtonBase(function: function, text: text, icon: icon, radius: radius);
// }

// Widget helpbutton(Function function, {String text, Icon icon, double radius}){
//   return SizedBox(
//     width: 70,
//     child: ButtonBase(function: function, text: text, icon: icon, radius: radius),
//   );
// }

// Widget fullButton(Function function, {String text, Icon icon, double radius}){
//   return SizedBox(
//     width: double.infinity,
//     child: ButtonBase(function: function, text: text, icon: icon, radius: radius),
//   );
// }

// Widget circularButton(Function function, {String text, Icon icon, bool inverseColor = false}){
//   return RawMaterialButton(
//     shape: CircleBorder(),
//     fillColor: inverseColor ? ColorPalette.buttonTextColor : ColorPalette.buttonColor,
//     child: text == null? icon : NormalText(text: text, fontWeight: FontWeight.bold, color: inverseColor ? ColorPalette.buttonColor : ColorPalette.buttonTextColor),
//     onPressed: function,
//   );
// }


class ButtonBase extends StatelessWidget{
  final Function function;
  final String text;
  final Icon icon;
  final double radius;

  ButtonBase({
    this.function,
    this.text,
    this.icon,
    this.radius,
  });

  @override
  Widget build(BuildContext context){
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      color: ColorPalette.buttonColor,
      splashColor: ColorPalette.buttonSplashColor,
      onPressed: function,
      child: text == null? icon : NormalText(text: text, color: ColorPalette.buttonTextColor),
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radius??10.0)
      ),
   );
  }
}


class Button extends StatelessWidget{
  final Function function;
  final String text;
  final Icon icon;
  final double radius;

  Button({
    this.function,
    this.text,
    this.icon,
    this.radius,
  });

  @override
  Widget build(BuildContext context){
    return ButtonBase(function: function, text: text, icon: icon, radius: radius);
  }
}

class Helpbutton extends StatelessWidget{
  final Function function;
  final String text;
  final Icon icon;
  final double radius;

  Helpbutton({
    this.function,
    this.text,
    this.icon,
    this.radius,
  });

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 70,
      child: ButtonBase(function: function, text: text, icon: icon, radius: radius),
    );
  }
}

class FullButton extends StatelessWidget{
  final Function function;
  final String text;
  final Icon icon;
  final double radius;

  FullButton({
    this.function,
    this.text,
    this.icon,
    this.radius,
  });

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: double.infinity,
      child: ButtonBase(function: function, text: text, icon: icon, radius: radius),
    );
  }
}

class CircularButton extends StatelessWidget{
 final Function function; 
 final String text;
 final Icon icon;
 bool inverseColor = false;

  CircularButton({
    this.function,
    this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context){
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: inverseColor ? ColorPalette.buttonTextColor : ColorPalette.buttonColor,
      child: text == null? icon : NormalText(text: text, fontWeight: FontWeight.bold, color: inverseColor ? ColorPalette.buttonColor : ColorPalette.buttonTextColor),
      onPressed: function,
    );
  }
}