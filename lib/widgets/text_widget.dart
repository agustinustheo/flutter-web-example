import 'package:DiantarAje/common/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget largeText(String text, {TextAlign textAlign, Color color, EdgeInsets padding}){
  return Container(
    padding: padding,
    child: Text(
      text,
      textAlign: textAlign,
      style: new TextStyle(
        color: color == null ? ColorPalette.textColor : color,
        fontSize: 20.0
      ),
    )
  );
}

Widget normalText(String text, {TextAlign textAlign, Color color, EdgeInsets padding}){
  return Container(
    padding: padding,
    child: Text(
      text,
      textAlign: textAlign,
      style: new TextStyle(
        color: color == null ? ColorPalette.textColor : color,
        fontSize: 18.0
      ),
    )
  );
}

Widget smallText(String text, {TextAlign textAlign, Color color, EdgeInsets padding}){
  return Container(
    padding: padding,
    child: Text(
      text,
      textAlign: textAlign,
      style: new TextStyle(
        color: color == null ? ColorPalette.textColor : color,
        fontSize: 14.0
      )
    ),
  );
}

Widget title(String text, {TextAlign textAlign, Color color, EdgeInsets padding}){
  return Container(
    padding: padding,
    child: Text(
      text,
      textAlign: textAlign,
      style: new TextStyle(
        color: color == null ? ColorPalette.textColor : color,
        fontSize: 30.0
      ),
    )
  );
}

Widget subtitle(String text, {TextAlign textAlign, Color color, EdgeInsets padding}){
  return Container(
    padding: padding,
    child: Text(
      text,
      textAlign: textAlign,
      style: new TextStyle(
        color: color == null ? ColorPalette.textColor : color,
        fontSize: 25.0
      ),
    )
  );
}

Widget smallTitle(String text, {TextAlign textAlign, Color color, EdgeInsets padding}){
  return Container(
    padding: padding,
    child: Text(
      text,
      textAlign: textAlign,
      style: new TextStyle(
        color: color == null ? ColorPalette.textColor : color,
        fontSize: 21.0
      ),
    )
  );
}

Widget textLink(String text, Function function, {TextAlign textAlign, Color color, EdgeInsets padding}){
  return Container(
    padding: padding,
    child: InkWell(
      child: Text(
        text,
        textAlign: textAlign,
        style: new TextStyle(
          fontSize: 14.0, 
          color: color == null ? ColorPalette.textLinkColor : color,
        ),
      ),
      onTap: function
    )
  );
}