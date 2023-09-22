import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:jm_plastics/utilities/TextStyles.dart';

import '../../../../../../../constants.dart';

class Stocks extends StatefulWidget {
  @override
  _StocksState createState() => _StocksState();
}

class _StocksState extends State<Stocks> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              right: 20,
              bottom: 100,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        // Wrap the SizedBox with a Container
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              top:
                                  Radius.circular(20.0)), // Circular top border
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        60.0), // Adjust the radius as needed
                    border: Border.all(
                      color: Colors.grey.shade100,
                      width: 1.0,
                    ),
                    color: Color(0xFF029BE3),
                  ),
                  width: 76,
                  height: 76,
                  child: Icon(
                    Icons.add_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              )),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 325,
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFEAEAEA),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 8),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search for stocks"),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              CarouselSlider(
                options: CarouselOptions(height: 40.0, viewportFraction: 0.4),
                items: ['Local Granules', 'Saaniya Granules', 'Colour/Pigment']
                    .map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BlueOval,
                            child: Center(
                                child: Text(
                              '$i',
                              style:
                                  TextStyle(fontSize: fs3, color: Colors.white),
                            ))),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              LabelEntries(
                screenWidth: screenWidth,
                color: Color(0xff06C060),
              ),
              LabelEntries(screenWidth: screenWidth, color: Color(0xffFFA101)),
              LabelEntries(screenWidth: screenWidth, color: Color(0xffFFA101)),
              LabelEntries(screenWidth: screenWidth, color: Color(0xff06C060)),
              LabelEntries(screenWidth: screenWidth, color: Color(0xffC31024)),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class LabelEntries extends StatelessWidget {
  LabelEntries({super.key, required this.screenWidth, required this.color});

  final double screenWidth;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: 74,
            decoration: BoxDecoration(
              color: color,
              borderRadius:
                  BorderRadius.circular(16.0), // Adjust the radius as needed
            ),
          ),
        ),
        Positioned(
          left: 10,
          width: screenWidth - 10,
          child: Container(
            child: Row(
              children: [
                SizedBox(
                  width: screenWidth / 10,
                ),
                Text(
                  'L Red',
                  style: TextStyle(
                    // Text color
                    fontSize: fs3,
                  ),
                ),
                SizedBox(
                  width: screenWidth / 15,
                ),
                Text('05',
                    style: TextStyle(
                      color: color,
                      // Text color
                      fontSize: fs3,
                    )),
                SizedBox(
                  width: screenWidth / 2,
                ),
                Icon(
                  Icons.edit_note_sharp,
                  color: BlueColor,
                )
              ],
            ),
            height: 74,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade100,
                width: 2.0,
              ),
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(16.0), // Adjust the radius as needed
            ),
          ),
        ),
      ],
    );
  }
}
