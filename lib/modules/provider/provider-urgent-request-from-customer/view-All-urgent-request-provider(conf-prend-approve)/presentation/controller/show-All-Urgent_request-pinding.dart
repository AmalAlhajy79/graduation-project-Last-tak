import 'package:get/get.dart';
import 'package:newtes1/modules/provider/provider-urgent-request-from-customer/view-All-urgent-request-provider(conf-prend-approve)/presentation/controller/show-All-Urgent_request-controller.dart';

class ProviderAllUrgentRequestFromCustomerBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(ProviderAllUrgentRequestFromCustomerController());
  }

}