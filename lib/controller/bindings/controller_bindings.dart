import 'package:wavemall/controller/cart_controller.dart';
import 'package:wavemall/controller/home_controller.dart';
import 'package:wavemall/controller/login_controller.dart';
import 'package:wavemall/controller/settings_controller.dart';
import 'package:get/get.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GeneralSettingsController>(() => GeneralSettingsController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<CartController>(() => CartController());
  }
}
