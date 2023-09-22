import 'package:flutter/material.dart';
import 'package:jm_plastics/utilities/BlueOvalBox.dart';
import 'package:jm_plastics/controllers/ScreenControllers.dart';
import 'package:get/get.dart';

import '../../../../utilities/CustomDrawer.dart';

class ProductionPage extends StatelessWidget {
  const ProductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenController screensController = Get.put(ScreenController());
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              'Production',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        leading: Builder(
          builder: (context) => // Ensure Scaffold is in context
              TextButton(
                  child: Icon(
                    Icons.menu,
                    color: Color(0xFF029BE3),
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer()),
        ),
      ),
      drawer: ClipRRect(
        borderRadius:
            BorderRadius.circular(50), // Circular border for the drawer
        child: CustomDrawer(screenHeight: screenHeight),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight / 5,
              ),
              GestureDetector(
                  onTap: () {
                    screensController.ChangeScreen(5);
                  },
                  child: BlueOvalBox(
                    screenWidth: screenWidth,
                    title: 'Production',
                    imagelocation: 'assets/images/Inventory.png',
                  )),
              GestureDetector(
                  onTap: () {
                    screensController.ChangeScreen(6);
                  },
                  child: BlueOvalBox(
                    screenWidth: screenWidth,
                    title: 'Tailoring',
                    imagelocation: 'assets/images/MatStocks.png',
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
