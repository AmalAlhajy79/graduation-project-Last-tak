import 'package:get/get.dart';
import 'package:newtes1/modules/customer/profile-any-Provider-from-service-details/presentation/controller/sho-prof-provider-by-user-controller.dart';

class ShowProfileProviderByCustomBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(ShowProfileProviderByCustomController());
  }

}