import 'package:flutter/material.dart';

import '../constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Color(0xFF02AB54),
            width: double.infinity,
            height: screenHeight / 5,
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight / 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 26.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/User.png',
                        width: 43,
                        height: 43,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Jhon Williams',
                              style: TextStyle(
                                // Text color
                                fontSize: fs1,
                              )),
                          Text('Admin',
                              style: TextStyle(
                                // Text color
                                fontSize: fs3,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/User.png',
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'About Us',
                        style:
                            TextStyle(color: Color(0xFF767577), fontSize: fs2),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 37.0),
                  child: Container(
                    child: SizedBox(),
                    color: Color(0xFFC0C6D3),
                    width: double.infinity,
                    height: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/faq.png',
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'FAQ',
                        style: TextStyle(
                          color: Color(0xFF767577),
                          fontSize: fs2,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 37.0),
                  child: Container(
                    child: SizedBox(),
                    color: Color(0xFFC0C6D3),
                    width: double.infinity,
                    height: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/help.png',
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Help',
                        style:
                            TextStyle(color: Color(0xFF767577), fontSize: fs2),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 37.0),
                  child: Container(
                    child: SizedBox(),
                    color: Color(0xFFC0C6D3),
                    width: double.infinity,
                    height: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/profile.png',
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Profile',
                        style:
                            TextStyle(color: Color(0xFF767577), fontSize: fs2),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 37.0),
                  child: Container(
                    child: SizedBox(),
                    color: Color(0xFFC0C6D3),
                    width: double.infinity,
                    height: 1,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(color: Colors.white),
          )),
        ],
      ),
      // Your drawer content here
    );
  }
}
