import 'package:farmers_fresh_zone/farmer_fresh_zone.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Famers Fresh Zone',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const FarmersFreshZone(),
    );
  }
}


