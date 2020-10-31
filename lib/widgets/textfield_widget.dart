import 'package:DiantarAje/common/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textField(String labelText, {Icon prefixIcon, bool readOnly, String Function(String) validator,
                bool isPassword, Function onTap, void Function(String) onSaved,
                void Function(String) onChanged, TextEditingController controller}){
  return SizedBox(
    height: 60.0,
    child: TextFormField(
      decoration: new InputDecoration(
        helperText: ' ',
        prefixIcon: prefixIcon,
        labelText: labelText,
        fillColor: ColorPalette.textboxFillColor,
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
      ),
      validator: validator,
      onTap: onTap,
      onSaved: onSaved,
      onChanged: onChanged,
      readOnly: readOnly == null ? false : true,
      controller: controller,
      obscureText: isPassword??false,
    )
  );
}