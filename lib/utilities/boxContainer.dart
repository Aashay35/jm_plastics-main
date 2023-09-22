import 'package:flutter/material.dart';

class boxContainer extends StatelessWidget {
  final String heading, subheading;
  const boxContainer(
      {Key? key, required this.heading, required this.subheading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text(heading), Text(subheading)]),
      ),
    );
  }
}
