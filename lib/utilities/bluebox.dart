import 'package:flutter/material.dart';
import 'package:jm_plastics/constants.dart';

class blueBox extends StatelessWidget {
  final double screenWidth;
  const blueBox({Key? key, required this.screenWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18),
      child: Container(
        child: Center(
          child: Text(
            "Save Changes",
            style: TextStyle(color: Colors.white, fontSize: fs1),
          ),
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
        height: 60,
      ),
    );
  }
}
