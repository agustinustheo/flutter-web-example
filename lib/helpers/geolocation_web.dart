import 'dart:js';

import 'package:DiantarAje/helpers/js_helper.dart';
import 'package:geolocator/geolocator.dart';

class GeolocationWeb{
  Position _position;

  _setPosition(pos){
    try {
      _position = Position(latitude: pos.coords.latitude, longitude: pos.coords.longitude);
    } catch (ex) {
      print("Exception thrown : " + ex.toString());
    }
  }

  Position getPosition() {
    getCurrentPositionWeb(allowInterop((pos) => _setPosition(pos)));
    return _position;
  }

  String getMapsApiKey(){
    return 'AIzaSyC0BB1QZmynq7DmteH991GG9uMdbSPjn0';
  }
}