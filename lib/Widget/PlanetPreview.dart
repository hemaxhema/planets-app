import 'package:flutter/material.dart';
import 'package:planets_app/ListofPlanets.dart';

class PlanetPreview extends StatelessWidget {
  String PlanetName;
  String PlanetInfo;
  String PlanetUrl;
  double PlanetLocation;
  double PlanetArrowDown;

  PlanetPreview({
    required this.PlanetName,
    required this.PlanetInfo,
    required this.PlanetUrl,
    required this.PlanetLocation,
    required this.PlanetArrowDown,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Container(
              height: 150,
              // color: Colors.blue,
              width: double.infinity,
              margin: EdgeInsets.only(
                right: 22,
                top: 33,
              ),
              child: Stack(
                children: [
                  Container(
                    height: double.infinity,
                    margin: EdgeInsets.only(left: 75),
                    decoration: BoxDecoration(
                      color: Color(0xff434273),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                PlanetName,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            // Text(
                            //   PlanetInfo,
                            //   style: TextStyle(
                            //     fontSize: 17,
                            Container(
                              width: 170,
                              child: FittedBox(
                                alignment: Alignment.centerLeft,
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  PlanetInfo,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white60,
                                  ),
                                ),

                                // ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Divider(
                                color: Color(0xff08B6EE),
                                thickness: 3,
                              ),
                              width: 40,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 170,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_sharp,
                                          color: Colors.white24,
                                          size: 20,
                                        ),
                                        Text(
                                          "${PlanetLocation}m.km",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_downward,
                                          color: Colors.white24,
                                          size: 20,
                                        ),
                                        Text(
                                          "${PlanetArrowDown} m/s²",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      PlanetUrl,
                    ),
                  ),
                  DeleteButton(PlanetName: PlanetName),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DeleteButton extends StatefulWidget {
  String PlanetName;

  DeleteButton({required this.PlanetName});

  @override
  State<DeleteButton> createState() => _DeleteButtonState();
}

class _DeleteButtonState extends State<DeleteButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: EdgeInsets.all(5),
      child: IconButton(
        icon: Icon(Icons.delete),
        color: Color(0xff7973A6),
        onPressed: () {
          setState(() {
            ListofPlanets.removeWhere(
                (element) => element.PlanetName == widget.PlanetName);
          });
        },
      ),
    );
  }
}
