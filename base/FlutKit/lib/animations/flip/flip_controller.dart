import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FlipController extends GetxController {
  TickerProvider ticker;
  FlipController(this.ticker);
  late AnimationController animationController;
  late Animation<double> flipAnim;

  @override
  void onInit() {
    animationController =
        AnimationController(duration: Duration(seconds: 5), vsync: ticker);

    flipAnim = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.0, 0.5, curve: Curves.linear)));
    super.onInit();
  }

  void goBack() {
    Get.back();
    // Navigator.pop(context);
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}
