import 'package:android_metadata/android_metadata.dart';
import 'package:geolocator/geolocator.dart';

// https://pub.dev/packages/geolocator
class GeolocationAndroid {
  static Future<Position> getPosition() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.whileInUse || permission == LocationPermission.always) {
      return await Geolocator.getLastKnownPosition();
    }
  }

  static Future<String> getMapsApiKey() async {
    Map<String, String> metadata = await AndroidMetadata.metaDataAsMap;
    return metadata["com.google.android.geo.API_KEY"];
  }
}