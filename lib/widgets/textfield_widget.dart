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


// class TextField extends StatelessWidget{
//   final String labelText;
//   final Icon prefixIcon;
//   final bool readOnly;
//   final String Function(String) validator;
//   final bool isPassword;
//   final Function onTap;
//   final void Function(String) onSaved;
//   final void Function(String) onChanged;
//   final TextEditingController controller;
 

//   TextField({
//     this.labelText,
//     this.prefixIcon,
//     this.readOnly,
//     this.validator,
//     this.isPassword,
//     this.onTap,
//     this.onSaved,
//     this.onChanged,
//     this.controller,
//   });

//   @override
//   Widget build(BuildContext context){
//      return SizedBox(
//       height: 60.0,
//       child: TextFormField(
//         decoration: new InputDecoration(
//           helperText: ' ',
//           prefixIcon: prefixIcon,
//           labelText: labelText,
//           fillColor: ColorPalette.textboxFillColor,
//           border: new OutlineInputBorder(
//             borderRadius: new BorderRadius.circular(10.0),
//           ),
//         ),
//         validator: validator,
//         onTap: onTap,
//         onSaved: onSaved,
//         onChanged: onChanged,
//         readOnly: readOnly == null ? false : true,
//         controller: controller,
//         obscureText: isPassword??false,
//       )
//     );
//   }
// }