import 'package:get/get.dart';
import 'Customer-SendRequest-Urgent-controller.dart';

class CustomerSendRequestUrgentControllerBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(CustomerSendRequestUrgentController());
  }

}