import 'package:flutter/material.dart';
import 'package:jm_plastics/constants.dart';

class BlueOvalBox extends StatelessWidget {
  final String imagelocation, title;
  const BlueOvalBox({
    required this.screenWidth,
    required this.title,
    required this.imagelocation,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, bottom: 18),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: screenWidth / 4,
            ),
            Image(
              image: AssetImage(imagelocation),
              width: 24,
              height: 27,
            ),
            SizedBox(
              width: screenWidth / 20,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: fs1),
            )
          ],
        ),
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(35.0), // Adjust the radius as needed
            border: Border.all(
              color: Colors.grey.shade100,
              width: 3.0,
            ),
            color: Color(0xFF029BE3)),
        width: screenWidth,
        height: 74,
      ),
    );
  }
}
