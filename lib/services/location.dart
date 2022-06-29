import 'package:geolocator/geolocator.dart';
class Location
{
  double Latitude;
  double Longitude;
  Future<void> getCurrentLocation()async
  {
    try{
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await
      Geolocator.getCurrentPosition(forceAndroidLocationManager: true,
          desiredAccuracy: LocationAccuracy.low);
      Latitude=position.latitude;
      Longitude=position.longitude;
    }
    catch(e)
    {
      print(e);
    }

  }

}
