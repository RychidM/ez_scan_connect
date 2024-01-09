import 'package:ez_scan_connect/app/modules/home/controllers/home_state.dart';
import 'package:ez_scan_connect/app/modules/order/bindings/order_binding.dart';
import 'package:ez_scan_connect/app/modules/order/controllers/order_controller.dart';
import 'package:ez_scan_connect/app/modules/profile/bindings/profile_binding.dart';
import 'package:ez_scan_connect/app/modules/profile/controllers/profile_controller.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final homeState = HomeState();
  OrderBinding orderBinding = OrderBinding();
  ProfileBinding profileBinding = ProfileBinding();

  @override
  void onInit() {
    homeState.navBarSwitcherController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );

    homeState.animationOffset = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(1, 0),
    ).animate(
      CurvedAnimation(
        parent: homeState.navBarSwitcherController,
        curve: Curves.easeInOut,
      ),
    );
    super.onInit();
  }

  void slideToLeft() {
    homeState.navBarSwitcherController.forward();
    homeState.navBarState = NavBarState.profile;
    profileBinding.dependencies();
    Get.delete<OrderController>();
  }

  void slideToRight() {
    homeState.navBarSwitcherController.reverse();
    homeState.navBarState = NavBarState.home;
    orderBinding.dependencies();
    Get.delete<ProfileController>();
  }
}
