import 'package:get/get.dart';
import 'package:newtes1/modules/customer/profile-Customer/presentation/controller/show-customer-profile/sho-controller.dart';

class ShowProfileUserBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(ShowProfileUserController());
  }

}