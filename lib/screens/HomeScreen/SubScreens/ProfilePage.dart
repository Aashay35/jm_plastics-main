import 'package:flutter/material.dart';
import 'package:jm_plastics/screens/HomeScreen/SubScreens/Production/SubScreens/buyerList.dart';
import 'package:jm_plastics/screens/HomeScreen/SubScreens/Production/SubScreens/departmentList.dart';
import 'package:jm_plastics/screens/HomeScreen/SubScreens/Production/SubScreens/supplierList.dart';

import '../../../constants.dart';
import '../../../utilities/CustomDrawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Departments',
                style: TextStyle(color: Colors.black),
              )),
          bottom: TabBar(
            indicatorColor: Colors.blue, // Set the indicator color to blue
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'Department List'),
              Tab(text: 'Supplier List'),
              Tab(text: 'Buyer List'),
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
        body: TabBarView(
          children: [
            departmentList(),
            supplierList(),
            buyerList(),
          ],
        ),
      ),
    );
  }
}
