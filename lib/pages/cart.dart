import 'package:DiantarAje/helpers/navigator_helper.dart';
import 'package:DiantarAje/widgets/align_widget.dart';
import 'package:DiantarAje/widgets/appbar_widget.dart';
import 'package:DiantarAje/widgets/background_widget.dart';
import 'package:DiantarAje/widgets/button_widget.dart';
import 'package:DiantarAje/widgets/cart_widget.dart';
import 'package:DiantarAje/widgets/container_widget.dart';
import 'package:DiantarAje/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'location.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlainBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          container(
            Column(
              children: [
                title('Keranjang Belanja', padding: EdgeInsets.all(10.0)),
                alignRight(Button(function:() => NavigatorHelper.push(context, HomePage(), "Home"), text: "Kembali Belanja")),
                CartTile(
                  productTitle: 'Gallon',
                  imageUrl: 'https://th.bing.com/th/id/OIP.3CUOO9-gM_T-W5N9EZNQXQHaMM?pid=Api&rs=1',
                  productPrice: 'Rp. 18.000', 
                  productLabel: 'Ongkir Gratis',
                ),
                alignRight(Button(function:() => NavigatorHelper.push(context, LocationPage(), "Location"), text: "Lanjutkan Pembayaran"))
              ],
            ),
            boxConstraints: BoxConstraints(maxWidth: 600.0)
          )
        ],
      ),
      // isCenter: false,
      appBar: DiantarAjeAppBar("DiantarAje", context: context).getAppBar()
    );
  }
}