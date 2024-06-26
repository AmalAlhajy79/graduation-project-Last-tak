import 'package:get/get.dart';
import 'package:newtes1/modules/customer/viewMyServices/presentation/controller/show-my-services/show-my-services-controller.dart';

class ShowMyServicesUserBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(ServiceController());
  }

}