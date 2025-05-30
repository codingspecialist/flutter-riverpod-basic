import 'package:flutter/material.dart';

class SelectorButton extends StatelessWidget {
  var onClick;

  SelectorButton(this.onClick);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        onPressed: onClick,
        icon: Icon(Icons.directions_bike),
      ),
    );
  }
}
