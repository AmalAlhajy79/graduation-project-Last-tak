import 'package:get/get.dart';
import 'package:newtes1/modules/bank/customer-bank/user-deposit/presentation/controller/deposit-User-bank-account/deposit-User-controller.dart';



class DepositUserBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(DepositUserController());
  }

}