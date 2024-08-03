import 'package:get/get.dart';

import 'ez_theme_controller.dart';

class EzThemeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EzThemeService>(() => EzThemeService());
  }
}
