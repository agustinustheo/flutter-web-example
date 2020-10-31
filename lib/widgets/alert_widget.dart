import 'package:DiantarAje/common/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:DiantarAje/helpers/navigator_helper.dart';

void alertSuccess(BuildContext context, String message, {Function function}){
  Alert(
    context: context,
    type: AlertType.success,
    title: "Success",
    desc: message,
    buttons: [
      DialogButton(
        child: Text(
          "OK",
          style: TextStyle(color: ColorPalette.dialogTextColor, fontSize: 20),
        ),
        onPressed: function??() => NavigatorHelper.pop(context),
        width: 120,
      )
    ],
  ).show();
}

void alertError(BuildContext context, String message, {Function function}){
  Alert(
    context: context,
    type: AlertType.error,
    title: "Error",
    desc: message,
    buttons: [
      DialogButton(
        child: Text(
          "OK",
          style: TextStyle(color: ColorPalette.dialogTextColor, fontSize: 20),
        ),
        onPressed: function??() => NavigatorHelper.pop(context),
        width: 120,
      )
    ],
  ).show();
}

void alertInfo(BuildContext context, String message, {Function function}){
  Alert(
    context: context,
    type: AlertType.info,
    title: "Info",
    desc: message,
    buttons: [
      DialogButton(
        child: Text(
          "OK",
          style: TextStyle(color: ColorPalette.dialogTextColor, fontSize: 20),
        ),
        onPressed: function??() => NavigatorHelper.pop(context),
        width: 120,
      )
    ],
  ).show();
}