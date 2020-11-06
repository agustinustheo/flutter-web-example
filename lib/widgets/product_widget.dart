import 'dart:ui';

import 'package:DiantarAje/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';

import 'container_widget.dart';
import 'label_widget.dart';

Widget productCard({String productTitle, String imageUrl, String productPrice, String productLabel}){
  return cardContainer(
    Column(
      children:[
        AspectRatio(
          aspectRatio: 1/1,
          child: Image.network(imageUrl)
        ),
        subtitle(productTitle),
        Wrap(
          direction: Axis.horizontal,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 60.0,
          children:[
            normalText(productPrice),
            label(productLabel)
          ] 
        )
      ]
    ),
    boxConstraints: BoxConstraints(maxWidth: 300)
  );
}