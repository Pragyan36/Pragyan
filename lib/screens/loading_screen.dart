import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:weatherapp/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LocationScreen(
          locationweather: weatherData, );
      }
      ) );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: SpinKitWanderingCubes(
          size: 100.0,
          color: Colors.white,
          duration: const Duration(milliseconds: 1000),
        ), 
        ),
    );
  }
}

 // @override
  // Widget build(BuildContext context) {
  //   String myMargin = '15';
  //   double myMarginAsADouble;

  //   try {
  //     myMarginAsADouble = double.parse(myMargin);
  //   } catch (e) {
  //     print(e);
  //     myMarginAsADouble = 30.0;
  //   }

  //   return Scaffold(
  //     body: Container(
  //       margin: EdgeInsets.all(myMarginAsADouble),
  //       color: Colors.red,
  //     ),
  //   );
  // }