import 'package:get/get.dart';
import 'package:newtes1/modules/customer/profile-Customer/presentation/controller/update-customer-profile/update-Profile-Custom-controller.dart';

class Update_ProfileUserBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(Update_ProfileUserController());
  }

}