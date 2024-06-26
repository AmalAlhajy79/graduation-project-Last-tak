import 'package:get/get.dart';

import 'deposit-Provider-controller.dart';

class DepositProviderBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(DepositProviderController());
  }

}