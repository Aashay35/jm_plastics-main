import 'package:flutter/material.dart';
import 'package:jm_plastics/controllers/ScreenControllers.dart';
import 'package:get/get.dart';
import 'SubScreens/Stocks.dart';
import 'SubScreens/ConsumptionPurchase.dart';
class RawMaterialsScreen extends StatelessWidget {
  const RawMaterialsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenController screensController = Get.put(ScreenController());
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: TextButton(onPressed: (){screensController.ChangeScreen(1);},child: Icon(Icons.arrow_back_ios_new,color: Colors.black,),),
          title: Align(alignment: Alignment.topLeft,child: Text('Raw Materials',style: TextStyle(color: Colors.black),)),
          bottom: TabBar(
            indicatorColor: Colors.blue, // Set the indicator color to blue
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: 'Stocks'),
              Tab(text: 'Consumption & Purchase'),
            ],
          ),
        ),

        body: TabBarView(
          children: [

            Stocks(),
            ConsumptionPurchase()

          ],
        ),
      ),
    );
  }
}
