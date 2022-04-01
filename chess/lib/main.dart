import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'Splash/splash_screen.dart';

void main() => runApp(
  DevicePreview(
    enabled: false,
    tools: [
      ...DevicePreview.defaultTools,
    ],
    builder: (context) => const MyApp(),
  ),
);


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Spalsh_Screen(),
    );
  }
}