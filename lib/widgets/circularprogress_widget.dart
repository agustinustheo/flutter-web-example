import 'package:DiantarAje/common/colors.dart';
import 'package:DiantarAje/widgets/background_widget.dart';
import 'package:flutter/material.dart';

Widget circularProgress(Color color){
  return Container(padding: EdgeInsets.only(top: 5.0, bottom: 5.0), child: Center(child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(color))));
}

Widget fullCircularProgress(){
  return background(circularProgress(ColorPalette.circularProgressColor));
}