import 'package:get/get.dart';
import 'withdrawBank-User-controller.dart';
class WithdrawBankUserBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(WithdrawBankUserController());
  }

}