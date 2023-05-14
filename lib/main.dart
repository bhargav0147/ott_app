import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:ott_app/provider/ottProvider.dart';
import 'package:ott_app/view/homeScreen.dart';
import 'package:ott_app/view/visitScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => ChangeNotifierProvider(
      create: (context) => OttProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => HomeScreen(),
          'visit':(context) => VisitScreen(),
        },
      ),
    ),
  ));
}
