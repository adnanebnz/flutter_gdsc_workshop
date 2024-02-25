import 'package:get/get.dart';

class ManageTipController extends GetxController {
  RxBool isLoaded = false.obs;
  @override
  void onInit() {
    super.onInit();
    ever(isLoaded, (callback) => {});
  }

  void addTip() {
    // Add your add tip logic here
  }

  void updateTip() {
    // Add your update tip logic here
  }

  void onUpdateTip(double value) {}

  String? validateTitle(String? value) {
    return null;
  }

  String? validateAmount(String? value) {
    return null;
  }
}
