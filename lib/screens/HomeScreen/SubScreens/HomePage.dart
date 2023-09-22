import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../utilities/CustomDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(15.0), // Adjust the radius as needed
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey.shade100,
                  width: 2.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Local Granuals',
                      style: TextStyle(
                          color: Color(0xFF9191A1),
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        LocalBox(
                          name: 'LRY',
                          quantity: '00',
                        ),
                        LocalBox(
                          name: 'L RED',
                          quantity: '00',
                        ),
                        LocalBox(
                          name: 'LOra',
                          quantity: '00',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(15.0), // Adjust the radius as needed
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey.shade100,
                  width: 2.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mats Sales',
                      style: TextStyle(
                          color: Color(0xFF9191A1),
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        LocalBox2(
                          name: 'Today\'s',
                          quantity: '2500',
                        ),
                        LocalBox2(
                          name: 'Weekly',
                          quantity: '5000',
                        ),
                        LocalBox2(
                          name: 'Monthly',
                          quantity: '15000',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(15.0), // Adjust the radius as needed
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey.shade100,
                  width: 2.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Purchases',
                      style: TextStyle(
                          color: Color(0xFF9191A1),
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        LocalBox2(
                          name: 'Today\'s',
                          quantity: '2500',
                        ),
                        LocalBox2(
                          name: 'Weekly',
                          quantity: '5000',
                        ),
                        LocalBox2(
                          name: 'Monthly',
                          quantity: '15000',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LocalBox extends StatelessWidget {
  final String name, quantity;
  LocalBox({required this.name, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 82, // Adjust the width as needed
          height: 71, // Adjust the height as needed
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(15.0), // Adjust the radius as needed
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade100,
              width: 2.0,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name, style: TextStyle(fontWeight: FontWeight.w400)),
              Text(quantity,
                  style: TextStyle(
                      color: Color(0xFFC31024), fontWeight: FontWeight.w400)),
            ],
          ),
        ),
      ),
    );
  }
}

class LocalBox2 extends StatelessWidget {
  final String name, quantity;
  LocalBox2({required this.name, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 82, // Adjust the width as needed
          height: 71, // Adjust the height as needed
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(15.0), // Adjust the radius as needed
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              Text(quantity,
                  style: TextStyle(
                    color: Color(0xFF9191A1),
                    fontWeight: FontWeight.w400,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
