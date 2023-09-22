import 'package:get/get.dart';
class ScreenController extends GetxController {
  var screen = 0.obs; // Observable variable

  void ChangeScreen(var temp) {
    screen.value = temp;
  }

}
