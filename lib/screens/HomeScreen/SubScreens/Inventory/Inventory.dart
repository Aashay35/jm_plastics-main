import 'package:flutter/material.dart';
import 'package:jm_plastics/utilities/CustomDrawer.dart';
import 'package:jm_plastics/utilities/BlueOvalBox.dart';
import 'package:jm_plastics/controllers/ScreenControllers.dart';
import 'package:get/get.dart';
class RawMaterialsPage extends StatelessWidget {
  const RawMaterialsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final ScreenController screensController = Get.put(ScreenController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text('Inventory',style: TextStyle(color: Colors.black),)
          ],
        ),
        leading:  Builder(
          builder: (context) => // Ensure Scaffold is in context
          TextButton(
              child:  Icon(Icons.menu,color: Color(0xFF029BE3),),
              onPressed: () => Scaffold.of(context).openDrawer()),
        ),
      ),
      drawer: ClipRRect(
        borderRadius: BorderRadius.circular(50), // Circular border for the drawer
        child: CustomDrawer(screenHeight: screenHeight),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight/10,),
              GestureDetector(
                onTap: (){
                  screensController.ChangeScreen(7);
                },
                  child: BlueOvalBox(screenWidth: screenWidth,title:'Raw Materials' ,imagelocation: 'assets/images/Inventory.png',)),

              GestureDetector(
                  onTap: (){
                    screensController.ChangeScreen(8);
                  },
                  child: BlueOvalBox(screenWidth: screenWidth,title:'Mat Stocks' ,imagelocation: 'assets/images/MatStocks.png',)),

              GestureDetector(
                  onTap: (){
                    screensController.ChangeScreen(9);
                  },
                  child: BlueOvalBox(screenWidth: screenWidth,title:'Belts & Bearings' ,imagelocation: 'assets/images/Belts.png',)),

              GestureDetector(
                  onTap: (){
                    screensController.ChangeScreen(10);
                  },
                  child: BlueOvalBox(screenWidth: screenWidth,title:'Packaging' ,imagelocation: 'assets/images/Packaging.png',))

            ],
          ),
        ),
      ),
    );
  }
}

