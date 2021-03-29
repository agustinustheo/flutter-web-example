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
    return PlainBackground(
      child: Column(
        children: [
          container(
            MapsWidget(),
            padding: EdgeInsets.all(0)
          ),
          container(
            Column(
              children: [
                title('Saat Ini Hanya Bisa Melayani di Daerah Kebun Jeruk dan Sekitarnya', textAlign: TextAlign.center, padding: EdgeInsets.all(20.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: new Container(
                        child: new Column(
                          children: <Widget>[
                            ClipOval(
                              child: Image.network(
                                "https://img.freepik.com/free-vector/location_53876-25530.jpg?size=338&ext=jpg&ga=GA1.2.1377952299.1616198400",
                                height: 250,
                                width: 250,
                              ),
                            ),

                            container(
                              NormalText(text: 'Jarak Anda Saat Ini Dengan Toko Kami: 3,8KM', color: Colors.white ),
                            ),
                            
                          ],
                        ),

                      padding: EdgeInsets.all(15.0),
                      color: ColorPalette.primaryColor,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child:Subtitle(text: 'Biaya Pengiriman Gratis jika Jarak Anda Kurang dari 5 KM Dari Toko Kami dan Pengiriman Hanya Bisa Dilakukan Maksimal 10 Kilometer dari Toko Kami', textAlign: TextAlign.center, padding: EdgeInsets.all(20.0)),
                    ),
                  ],
                ),
                Subtitle(text: 'Apakah Anda Dalam Jangkauan Toko Kami?', textAlign: TextAlign.center, padding: EdgeInsets.all(20.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child:FullButton(function:() => {}, text: 'BENAR, SAYA DIDALAM AREA'),
                    ),
                    Expanded(
                      flex: 2,
                      child: SmallTitle(text: 'Atau', textAlign: TextAlign.center, padding: EdgeInsets.all(20.0)),
                    ),
                    Expanded(
                      flex: 4,
                      child:FullButton(function:() => {}, text: 'SAYA DILUAR AREA')
                    ),
                  ],
                ),
              ],
            ),
            boxConstraints: BoxConstraints(maxWidth: 600)
          )
        ],
      ),
      appBar: DiantarAjeAppBar("DiantarAje", context: context).getAppBar()
    );
  }
}