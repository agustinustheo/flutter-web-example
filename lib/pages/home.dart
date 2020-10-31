import 'package:DiantarAje/bloc/auth/auth_bloc.dart';
import 'package:DiantarAje/common/colors.dart';
import 'package:DiantarAje/helpers/navigator_helper.dart';
import 'package:DiantarAje/widgets/appbar_widget.dart';
import 'package:DiantarAje/widgets/background_widget.dart';
import 'package:DiantarAje/widgets/button_widget.dart';
import 'package:DiantarAje/widgets/container_widget.dart';
import 'package:DiantarAje/widgets/gmaps_widget.dart';
import 'package:DiantarAje/widgets/product_widget.dart';
import 'package:DiantarAje/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import 'location.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return plainBackground(
      Column(
        children: [
          container(
            MapsWidget()
          ),
          container(
            Column(
              children: [
                title('Welcome!'),
                productCard(
                  productTitle: 'Gallon',
                  imageUrl: 'https://th.bing.com/th/id/OIP.3CUOO9-gM_T-W5N9EZNQXQHaMM?pid=Api&rs=1',
                  productPrice: 'Rp. 18.000', 
                  productLabel: 'Ongkir Gratis'
                ),
                button(() => NavigatorHelper.push(context, LocationPage(), "Location"), text: "Beli")
              ],
            )
          ),
          container(
            Column(
              children: [
                normalText(
                  'Perhatian',
                  padding: EdgeInsets.all(5.0),
                  color: Colors.white
                ),
                smallText(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin aliquet enim id lobortis placerat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae.',
                  textAlign: TextAlign.center,
                  padding: EdgeInsets.all(5.0),
                  color: Colors.white
                ),
              ],
            ),
            width: double.infinity,
            backgroundColor: ColorPalette.primaryColor
          )
        ],
      ),
      appBar: DiantarAjeAppBar("DiantarAje", context: context).getAppBar()
    );
  }
}