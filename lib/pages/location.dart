import 'package:DiantarAje/common/colors.dart';
import 'package:DiantarAje/widgets/appbar_widget.dart';
import 'package:DiantarAje/widgets/background_widget.dart';
import 'package:DiantarAje/widgets/button_widget.dart';
import 'package:DiantarAje/widgets/container_widget.dart';
import 'package:DiantarAje/widgets/gmaps_widget.dart';
import 'package:DiantarAje/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return plainBackground(
      Column(
        children: [
          container(
            MapsWidget(),
            padding: EdgeInsets.all(0)
          ),
          container(
            Column(
              children: [
                title('Saat Ini Hanya Bisa Melayani di Daerah Kebun Jeruk dan Sekitarnya', textAlign: TextAlign.center, padding: EdgeInsets.all(20.0)),
                subtitle('Biaya Pengiriman Gratis jika Jarak Anda Kurang dari 5 KM Dari Toko Kami dan Pengiriman Hanya Bisa Dilakukan Maksimal 10 Kilometer dari Toko Kami', textAlign: TextAlign.center, padding: EdgeInsets.all(20.0)),
                container(
                  normalText('Jarak Anda Saat Ini Dengan Toko Kami: 3,8KM', color: Colors.white),
                  backgroundColor: ColorPalette.primaryColor
                ),
                subtitle('Apakah Anda Dalam Jangkauan Toko Kami?', textAlign: TextAlign.center, padding: EdgeInsets.all(20.0)),
                fullButton(() => {}, text: 'BENAR, SAYA DIDALAM AREA'),
                smallTitle('Atau', textAlign: TextAlign.center, padding: EdgeInsets.all(20.0)),
                fullButton(() => {}, text: 'SAYA DILUAR AREA')
              ],
            )
          )
        ],
      ),
      appBar: DiantarAjeAppBar("DiantarAje", context: context).getAppBar()
    );
  }
}