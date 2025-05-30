import 'package:flutter/material.dart';

class ColorIcon extends StatelessWidget {
  double rGap;

  ColorIcon({this.rGap = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: rGap),
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            top: 5,
            left: 5,
            child: ClipOval(
              child: Container(
                width: 40,
                height: 40,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
