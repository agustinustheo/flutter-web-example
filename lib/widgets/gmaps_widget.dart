import 'dart:io' show Platform;
import 'dart:js';
import 'package:DiantarAje/helpers/geolocation_android.dart';
import 'package:DiantarAje/helpers/geolocation_web.dart';
import 'package:DiantarAje/helpers/js_helper.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

class MapsWidget extends StatefulWidget {
  @override
  _MapsWidgetState createState() => _MapsWidgetState();
}

class _MapsWidgetState extends State<MapsWidget> {
  Position _position;
  String googleMapsApiKey = '';
  final isLoading = ValueNotifier<bool>(false);
  
  _setPositionWeb(pos){
    try {
      setState(() {
        _position = Position(latitude: pos.coords.latitude, longitude: pos.coords.longitude);
      });
    } catch (ex) {
      print("Exception thrown : " + ex.toString());
    }
  }

  Position _getPositionWeb() {
    getCurrentPositionWeb(allowInterop((pos) => _setPositionWeb(pos)));
    return _position;
  }

  _MapsWidgetState() {
    this.isLoading.value = true;
    if (kIsWeb) {
      GeolocationWeb web = GeolocationWeb();
      _position = _getPositionWeb();
      googleMapsApiKey = web.getMapsApiKey();
      this.isLoading.value = false;
    } 
    else {
      if (Platform.isAndroid) {
        GeolocationAndroid.getPosition().then((pos) {
          _position = pos;
          GeolocationAndroid.getMapsApiKey().then((key) {
            googleMapsApiKey = key;
            this.isLoading.value = false;
          });
        });
      }
    }
  }

  String generateMapUrl() {
    String lat = _position == null ? '' : _position.latitude.toString();
    String lon = _position == null ? '' : _position.longitude.toString();
    String zoom = '18';

    if(_position == null) return 'https://th.bing.com/th/id/OIP.0EPm294nCWnuCHhLi9R8CAHaFV?pid=Api&rs=1';
    else return 'https://asset.kompas.com/crops/rZGRk__LcjFvSXCluMQV4VNAYdA=/114x0:1194x720/750x500/data/photo/2020/06/09/5edf899db1da5.jpg';
    // return 'https://maps.googleapis.com/maps/api/staticmap?center=${lat}%2C${lon}&zoom=${zoom}&markers=size:mid%7Ccolor:red%7C${lat}${lon}&size=600x400}&key=${googleMapsApiKey}';
  }

  Widget renderMap() {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 1200.0, maxHeight: 400.0),
      child: AspectRatio(
        aspectRatio: 3/2,
        child: ValueListenableBuilder(
          valueListenable: isLoading,
          builder: (context, value, widget) {
            return Image.network(generateMapUrl());
          }
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return renderMap();
  }
}