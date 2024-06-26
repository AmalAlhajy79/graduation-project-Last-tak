import 'package:get/get.dart';
import 'package:newtes1/modules/bank/customer-bank/store-account-user/presentation/controller/store-customer-bank-account/store-bank_account-Custom-controller.dart';

class StoreAccountUserBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(StoreAccountUserController());
  }

}