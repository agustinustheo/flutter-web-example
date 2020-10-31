import 'package:DiantarAje/helpers/navigator_helper.dart';
import 'package:DiantarAje/pages/auth/login.dart';
import 'package:DiantarAje/bloc/auth/auth_bloc.dart';
import 'package:DiantarAje/common/colors.dart';
import 'package:flutter/material.dart';

class DiantarAjeAppBar {
  final String title;
  final BuildContext context;

  DiantarAjeAppBar(this.title, {this.context});

  AppBar getAppBar() {
    return AppBar(
      iconTheme: IconThemeData(
        color: ColorPalette.buttonTextColor
      ),
      title: Text(this.title, style: TextStyle(color: ColorPalette.buttonTextColor)),
      backgroundColor: ColorPalette.primaryColor,
      actions: [
        context != null ? Container(
          padding: EdgeInsets.only(right: 10.0),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.person, color: ColorPalette.buttonTextColor),
                onPressed: () async{
                  NavigatorHelper.push(context, LoginPage(), "Login");
                }
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart, color: ColorPalette.buttonTextColor),
                onPressed: () async{
                  authBloc.closeSession();
                  NavigatorHelper.push(context, LoginPage(), "Login");
                }
              )
            ],
          )
        ) : SizedBox()
      ],
    );
  }
}