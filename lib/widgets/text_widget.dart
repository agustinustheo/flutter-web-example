import 'package:DiantarAje/common/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget largeText(String text, {TextAlign textAlign, Color color, EdgeInsets padding, FontWeight fontWeight}){
  return Container(
    padding: padding,
    child: Text(
      text,
      textAlign: textAlign,
      style: new TextStyle(
        color: color == null ? ColorPalette.textColor : color,
        fontSize: 20.0,
        fontWeight: fontWeight == null ? FontWeight.normal : fontWeight
      ),
    )
  );
}

Widget normalText(String text, {TextAlign textAlign, Color color, EdgeInsets padding, FontWeight fontWeight}){
  return Container(
    padding: padding,
    child: Text(
      text,
      textAlign: textAlign,
      style: new TextStyle(
        color: color == null ? ColorPalette.textColor : color,
        fontSize: 18.0,
        fontWeight: fontWeight == null ? FontWeight.normal : fontWeight
      ),
    )
  );
}

Widget smallText(String text, {TextAlign textAlign, Color color, EdgeInsets padding, FontWeight fontWeight}){
  return Container(
    padding: padding,
    child: Text(
      text,
      textAlign: textAlign,
      style: new TextStyle(
        color: color == null ? ColorPalette.textColor : color,
        fontSize: 14.0,
      fontWeight: fontWeight == null ? FontWeight.normal : fontWeight
      )
    ),
  );
}

Widget title(String text, {TextAlign textAlign, Color color, EdgeInsets padding, FontWeight fontWeight}){
  return Container(
    padding: padding,
    child: Text(
      text,
      textAlign: textAlign,
      style: new TextStyle(
        color: color == null ? ColorPalette.textColor : color,
        fontSize: 30.0,
        fontWeight: fontWeight == null ? FontWeight.normal : fontWeight
      ),
    )
  );
}

Widget subtitle(String text, {TextAlign textAlign, Color color, EdgeInsets padding, FontWeight fontWeight}){
  return Container(
    padding: padding,
    child: Text(
      text,
      textAlign: textAlign,
      style: new TextStyle(
        color: color == null ? ColorPalette.textColor : color,
        fontSize: 25.0,
        fontWeight: fontWeight == null ? FontWeight.normal : fontWeight
      ),
    )
  );
}

Widget smallTitle(String text, {TextAlign textAlign, Color color, EdgeInsets padding, FontWeight fontWeight}){
  return Container(
    padding: padding,
    child: Text(
      text,
      textAlign: textAlign,
      style: new TextStyle(
        color: color == null ? ColorPalette.textColor : color,
        fontSize: 21.0,
        fontWeight: fontWeight == null ? FontWeight.normal : fontWeight
      ),
    )
  );
}

Widget textLink(String text, Function function, {TextAlign textAlign, Color color, EdgeInsets padding, FontWeight fontWeight}){
  return Container(
    padding: padding,
    child: InkWell(
      child: Text(
        text,
        textAlign: textAlign,
        style: new TextStyle(
          fontSize: 14.0,
          fontWeight: fontWeight == null ? FontWeight.normal : fontWeight,
          color: color == null ? ColorPalette.textLinkColor : color,
        ),
      ),
      onTap: function
    )
  );
}