import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Source Sans Pro',
  fontSize: 80.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Source Sans Pro',
  fontSize: 40.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Source Sans Pro',
);

const kConditionTextStyle = TextStyle(
  fontSize: 70.0,
);

const kTextFieldInputDecoration =  InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon:
  Icon(Icons.location_city_outlined, color: Colors.white),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
  color: Colors.grey,
 ),
 border: OutlineInputBorder(
 borderRadius: BorderRadius.all(
 Radius.circular(10.0),
 ),
  borderSide: BorderSide.none,
  ),
);