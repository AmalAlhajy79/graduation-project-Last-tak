import 'package:get/get.dart';
import 'package:newtes1/modules/bank/provider-bank/store-account-provider/presentation/controller/store-provider-bank-account/store-bank_account-Provider-controller.dart';

class StoreAccountProviderBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(StoreAccountProviderController());
  }

}