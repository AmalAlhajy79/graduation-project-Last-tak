import 'package:get/get.dart';
import 'transferFunds-User-controller.dart';
class TransferFundsUserBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(TransferFundsUserController());
  }

}