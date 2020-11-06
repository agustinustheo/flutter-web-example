import 'package:DiantarAje/common/colors.dart';
import 'package:DiantarAje/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'button_widget.dart';
import 'container_widget.dart';
import 'label_widget.dart';

Widget cartTile({String productTitle, String imageUrl, String productPrice, String productLabel}) {
  return cardContainer(
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        label(productLabel),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: AspectRatio(
                aspectRatio: 1/1,
                child: Image.network(imageUrl)
              ),
              constraints: BoxConstraints(maxHeight: 100.0),
            ),
            SizedBox(width: 10.0),
            Wrap(
              direction: Axis.vertical,
              crossAxisAlignment: WrapCrossAlignment.start,
              spacing: 5.0,
              children:[
                normalText(productTitle),
                smallText(productPrice)
              ] 
            )
          ],
        ),
        smallText('Tulis catatan untuk barang ini', padding: EdgeInsets.all(10.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            circularButton((){}, icon: Icon(Icons.delete, color: ColorPalette.buttonTextColor)),
            Container(
              width: 30.0,
              child: circularButton((){}, text: '-', inverseColor: true)
            ),
            smallText('2', padding: EdgeInsets.all(10.0)),
            Container(
              width: 30.0,
              child: circularButton((){}, text: '+'),
            ),
          ],
        )
      ]
    )
  );
}