import 'package:get/get.dart';
import 'package:newtes1/modules/customer/profile-Customer/presentation/controller/store-customer-profile/store-Profile-Custom-controller.dart';

class StoreProfileUserBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(StoreProfileUserController());
  }

}