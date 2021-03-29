import 'package:DiantarAje/common/colors.dart';
import 'package:DiantarAje/widgets/background_widget.dart';
import 'package:flutter/material.dart';

// Widget circularProgress(Color color){
//   return Container(padding: EdgeInsets.only(top: 5.0, bottom: 5.0), child: Center(child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(color))));
// }

// Widget fullCircularProgress(){
//   return Background(child: CircularProgress(color: ColorPalette.circularProgressColor));
// }

class CircularProgress extends StatelessWidget{
  final Color color; 

  CircularProgress({
    this.color
  });

  @override
  Widget build(BuildContext context){
    return Container(padding: EdgeInsets.only(top: 5.0, bottom: 5.0), child: Center(child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(color))));
  }
}

class FullCircularProgress extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Background(child: CircularProgress(color: ColorPalette.circularProgressColor));
  }
}

