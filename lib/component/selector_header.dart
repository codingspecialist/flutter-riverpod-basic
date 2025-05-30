import 'package:flutter/material.dart';

import 'selector_button.dart';

class SelectorHeader extends StatefulWidget {
  @override
  State<SelectorHeader> createState() => _SelectorHeaderState();
}

class _SelectorHeaderState extends State<SelectorHeader> {
  // 1. 상태
  List<String> images = [
    'assets/p1.jpeg',
    'assets/p2.jpeg',
    'assets/p3.jpeg',
    'assets/p4.jpeg',
  ];
  int selectedIndex = 0;

  // 2. 행위
  void onClick(int index) {
    selectedIndex = index;
    print("현재 선택된 번호 : ${selectedIndex}");
    print("현재 선택된 사진 : ${images[selectedIndex]}");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: AspectRatio(
              aspectRatio: 5 / 3,
              child: Image.asset("${images[selectedIndex]}", fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SelectorButton(() => onClick(0)),
                SelectorButton(() => onClick(1)),
                SelectorButton(() => onClick(2)),
                SelectorButton(() => onClick(3)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
