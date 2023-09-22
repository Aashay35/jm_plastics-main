import 'package:flutter/material.dart';
import 'package:jm_plastics/controllers/ScreenControllers.dart';
import 'SubScreens/HomePage.dart';
import 'SubScreens/CartPage.dart';
import 'SubScreens/ProfilePage.dart';
import 'SubScreens/Production/ProductionPage.dart';
import 'SubScreens/Inventory/Inventory.dart';
import 'package:get/get.dart';


import 'SubScreens/Production/SubScreens/ProductionScreen.dart';
import 'SubScreens/Production/SubScreens/TailoringScreen.dart';

import 'SubScreens/Inventory/SubScreens/BeltsBearingsScreen.dart';
import 'SubScreens/Inventory/SubScreens/MatStocksScreen.dart';
import 'SubScreens/Inventory/SubScreens/PackagingScreen.dart';
import 'SubScreens/Inventory/SubScreens/RawMaterialsScreen/RawMaterialsScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final screens=[
    ProductionPage(),
    RawMaterialsPage(),
    HomePage(),
    CartPage(),
    ProfilePage(),

    ProductionScreen(),
    TailoringScreen(),

    RawMaterialsScreen(),
    MatStocksScreen(),
    BeltsBearingsScreen(),
    PackagingScreen(),


  ];

  final ScreenController screensController = Get.put(ScreenController());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[100],

      body: Stack(
        children: [
          Obx(()=> screens[screensController.screen.value],),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 74,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.0), // Adjust the radius as needed
                  border: Border.all(
                    color: Colors.grey.shade100,
                    width: 3.0,
                  ),

                  color: Colors.white, // Container background color
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(onTap: (){screensController.ChangeScreen(0);},child: Icon(Icons.settings)),
                    GestureDetector(onTap: (){screensController.ChangeScreen(1);},child: Icon(Icons.check_box_outline_blank)),
                    GestureDetector(onTap: (){screensController.ChangeScreen(2);},child: Icon(Icons.home)),
                    GestureDetector(onTap: (){screensController.ChangeScreen(3);},child: Icon(Icons.shopping_cart_rounded)),
                    GestureDetector(onTap: (){screensController.ChangeScreen(4);},child: Icon(Icons.people)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),

    );
  }
}
