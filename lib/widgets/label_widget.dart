import 'package:DiantarAje/common/colors.dart';
import 'package:DiantarAje/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';

// Widget label(String text){
//   return Container(
//     padding: EdgeInsets.all(7.0),
//     child: smallText(text),
//     decoration: BoxDecoration(
//         color: ColorPalette.thirdColor,
//         borderRadius: new BorderRadius.circular(25.0)
//     ),
//   );
// }

class Label extends StatelessWidget{
 final String text;

  Label({
    this.text,
  });

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(7.0),
      child: SmallText(text: text),
      decoration: BoxDecoration(
          color: ColorPalette.thirdColor,
          borderRadius: new BorderRadius.circular(25.0)
      ),
    );
  }
}