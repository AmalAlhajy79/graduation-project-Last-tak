import 'package:get/get.dart';
import 'package:newtes1/modules/provider/provider-urgent-request-from-customer/provider-view-details-request-from-customer/presentation/controller/provider-details-request-controller.dart';

class ProviderDetailsRequestBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(ProviderDetailsRequestController());
  }

}