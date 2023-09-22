import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../utilities/CustomDrawer.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/images/SplashLogo.png',
                width: 58,
                height: 48,
              ),
            ),
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
      body: Container(
        child: Column(
          children: [
            Text('Cart'),
            Row(
              children: [
                Container(
                  width: 82, // Adjust the width as needed
                  height: 71, // Adjust the height as needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        15.0), // Adjust the radius as needed
                    color: Colors.white, // Container background color
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('LRY'),
                      Text('00',
                          style: TextStyle(
                            color: Color(0xFFC31024),
                          )),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
