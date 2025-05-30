import 'package:flutter/material.dart';
import 'package:flutter_shop/component/color_icon.dart';

class BottomDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Urban Soft AL 10.0"),
                Spacer(),
                Text("\$699"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Spacer(),
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 18),
                    children: [
                      TextSpan(text: "review"),
                      TextSpan(
                        text: " (26)",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text("Color Options"),
            SizedBox(height: 20),
            Row(
              children: [
                ColorIcon(rGap: 10),
                ColorIcon(rGap: 10),
                ColorIcon(rGap: 10),
                ColorIcon(rGap: 10),
                ColorIcon(),
              ],
            ),
            SizedBox(height: 20),
            Align(
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
