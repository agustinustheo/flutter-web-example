import 'package:DiantarAje/common/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// Widget largeText(String text, {TextAlign textAlign, Color color, EdgeInsets padding, FontWeight fontWeight}){
//   return Container(
//     padding: padding,
//     child: Text(
//       text,
//       textAlign: textAlign,
//       style: new TextStyle(
//         color: color == null ? ColorPalette.textColor : color,
//         fontSize: 20.0,
//         fontWeight: fontWeight == null ? FontWeight.normal : fontWeight
//       ),
//     )
//   );
// }

// Widget normalText(String text, {TextAlign textAlign, Color color, EdgeInsets padding, FontWeight fontWeight}){
//   return Container(
//     padding: padding,
//     child: Text(
//       text,
//       textAlign: textAlign,
//       style: new TextStyle(
//         color: color == null ? ColorPalette.textColor : color,
//         fontSize: 18.0,
//         fontWeight: fontWeight == null ? FontWeight.normal : fontWeight
//       ),
//     )
//   );
// }

// Widget smallText(String text, {TextAlign textAlign, Color color, EdgeInsets padding, FontWeight fontWeight}){
//   return Container(
//     padding: padding,
//     child: Text(
//       text,
//       textAlign: textAlign,
//       style: new TextStyle(
//         color: color == null ? ColorPalette.textColor : color,
//         fontSize: 14.0,
//       fontWeight: fontWeight == null ? FontWeight.normal : fontWeight
//       )
//     ),
//   );
// }

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

// Widget subtitle(String text, {TextAlign textAlign, Color color, EdgeInsets padding, FontWeight fontWeight}){
//   return Container(
//     padding: padding,
//     child: Text(
//       text,
//       textAlign: textAlign,
//       style: new TextStyle(
//         color: color == null ? ColorPalette.textColor : color,
//         fontSize: 25.0,
//         fontWeight: fontWeight == null ? FontWeight.normal : fontWeight
//       ),
//     )
//   );
// }

// Widget smallTitle(String text, {TextAlign textAlign, Color color, EdgeInsets padding, FontWeight fontWeight}){
//   return Container(
//     padding: padding,
//     child: Text(
//       text,
//       textAlign: textAlign,
//       style: new TextStyle(
//         color: color == null ? ColorPalette.textColor : color,
//         fontSize: 21.0,
//         fontWeight: fontWeight == null ? FontWeight.normal : fontWeight
//       ),
//     )
//   );
// }

// Widget textLink(String text, Function function, {TextAlign textAlign, Color color, EdgeInsets padding, FontWeight fontWeight}){
//   return Container(
//     padding: padding,
//     child: InkWell(
//       child: Text(
//         text,
//         textAlign: textAlign,
//         style: new TextStyle(
//           fontSize: 14.0,
//           fontWeight: fontWeight == null ? FontWeight.normal : fontWeight,
//           color: color == null ? ColorPalette.textLinkColor : color,
//         ),
//       ),
//       onTap: function
//     )
//   );
// }

class LargeText extends StatelessWidget{
 final String text;
 final TextAlign textAlign;
 final Color color;
 final EdgeInsets padding;
 final FontWeight fontWeight;

  LargeText({
    this.text,
    this.textAlign,
    this.color,
    this.padding,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context){
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
}

class NormalText extends StatelessWidget{
 final String text;
 final TextAlign textAlign;
 final Color color;
 final EdgeInsets padding;
 final FontWeight fontWeight;

  NormalText({
    this.text,
    this.textAlign,
    this.color,
    this.padding,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context){
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
}

class SmallText extends StatelessWidget{
 final String text;
 final TextAlign textAlign;
 final Color color;
 final EdgeInsets padding;
 final FontWeight fontWeight;

  SmallText({
    this.text,
    this.textAlign,
    this.color,
    this.padding,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context){
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
}

// class Title extends StatelessWidget{
//  final String text;
//  final TextAlign textAlign;
//  final Color color;
//  final EdgeInsets padding;
//  final FontWeight fontWeight;

//   Title({
//     this.text,
//     this.textAlign,
//     this.color,
//     this.padding,
//     this.fontWeight,
//   });

//   @override
//   Widget build(BuildContext context){
//    return Container(
//       padding: padding,
//       child: Text(
//         text,
//         textAlign: textAlign,
//         style: new TextStyle(
//           color: color == null ? ColorPalette.textColor : color,
//           fontSize: 30.0,
//           fontWeight: fontWeight == null ? FontWeight.normal : fontWeight
//         ),
//       )
//     );
//   }
// }
class Subtitle extends StatelessWidget{
 final String text;
 final TextAlign textAlign;
 final Color color;
 final EdgeInsets padding;
 final FontWeight fontWeight;

  Subtitle({
    this.text,
    this.textAlign,
    this.color,
    this.padding,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context){
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
}

class SmallTitle extends StatelessWidget{
 final String text;
 final TextAlign textAlign;
 final Color color;
 final EdgeInsets padding;
 final FontWeight fontWeight;

  SmallTitle({
    this.text,
    this.textAlign,
    this.color,
    this.padding,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context){
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
}

class TextLink extends StatelessWidget{
 final String text;
 final Function function;
 final TextAlign textAlign;
 final Color color;
 final EdgeInsets padding;
 final FontWeight fontWeight;
 

  TextLink({
    this.text,
    this.function,
    this.textAlign,
    this.color,
    this.padding,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context){
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
}