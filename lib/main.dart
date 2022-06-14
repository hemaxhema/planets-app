import 'dart:ui';
import 'Widget/PlanetPreview.dart';
import 'package:flutter/material.dart';
import 'Widget/AppBarGradient.dart';
import 'ListofPlanets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "planet app",
      home: Scaffold(
          backgroundColor: Color(0xff3E3963),
          body: SafeArea(
            child: Column(
              children: [
                AppBarGradient(
                  thisString: "Planet App",
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, i) {
                      return PlanetPreview(
                          PlanetName: ListofPlanets[i].PlanetName,
                          PlanetInfo: ListofPlanets[i].PlanetInfo,
                          PlanetUrl: ListofPlanets[i].PlanetUrl,
                          PlanetLocation: ListofPlanets[i].PlanetLocation,
                          PlanetArrowDown: ListofPlanets[i].PlanetArrowDown);
                    },
                    itemCount: ListofPlanets.length,
                  ),
                ),
              ],
            ),
          ),floatingActionButton:FloatingActionButton(
        onPressed: () {setState(() {

        });
        },
        backgroundColor: Color(0xff2f2c4b),
        child: const Icon(Icons.refresh),
      ), ),
    );
  }
}
