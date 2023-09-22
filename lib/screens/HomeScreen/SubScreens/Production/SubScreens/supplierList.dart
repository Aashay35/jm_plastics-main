import 'package:flutter/material.dart';
import 'package:jm_plastics/utilities/bluebox.dart';
import 'package:jm_plastics/utilities/boxContainer.dart';

class supplierList extends StatelessWidget {
  const supplierList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
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
              LabelEntries(
                screenWidth: screenWidth,
                color: Color(0xff06C060),
              ),
              LabelEntries(screenWidth: screenWidth, color: Color(0xffFFA101)),
              LabelEntries(screenWidth: screenWidth, color: Color(0xffFFA101)),
            ],
          ),
          Positioned(
              right: 20,
              bottom: 100,
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25))),
                    builder: (BuildContext context) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text("Add Supplier"),
                          SizedBox(
                            height: 20,
                          ),
                          boxContainer(
                              heading: "Supplier Name",
                              subheading: "Indian Plastics"),
                          SizedBox(
                            height: 20,
                          ),
                          boxContainer(
                              heading: "Supplier Code", subheading: "23452"),
                          SizedBox(
                            height: 20,
                          ),
                          boxContainer(
                              heading: "Contact Number",
                              subheading: "1234567890"),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          blueBox(screenWidth: screenWidth)
                        ],
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
        ],
      ),
    );
  }
}

class LabelEntries extends StatelessWidget {
  LabelEntries({super.key, required this.screenWidth, required this.color});

  final double screenWidth;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text("Indian Plastics"),
                SizedBox(
                  width: 150,
                ),
                Text("#Id 2343")
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Icon(Icons.call),
                SizedBox(
                  width: 15,
                ),
                Text("+91-123455677")
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Icon(Icons.location_city),
                SizedBox(
                  width: 15,
                ),
                Text("Karnataka")
              ],
            )
          ],
        ),
        height: 150,
      ),
    );
  }
}
