import 'package:flutter/cupertino.dart';

Widget alignLeft(Widget child){
  return Row(mainAxisAlignment: MainAxisAlignment.start, children:[child]);
}

Widget alignRight(Widget child){
  return Row(mainAxisAlignment: MainAxisAlignment.end, children:[child]);
}