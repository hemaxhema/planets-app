import 'package:flutter/material.dart';

class AppBarGradient extends StatelessWidget {
  AppBarGradient({required this.thisString});

  String thisString;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff236CD1), Color(0xff00C6FF)],
          end: const FractionalOffset(0.7, 0.0),
        ),
      ),
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.format_list_bulleted,
              size: 30,
              color: Colors.white,
            ),
          ),
          Text(
            thisString,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.search_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
