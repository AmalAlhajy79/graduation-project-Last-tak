import 'package:get/get.dart';
import 'package:newtes1/modules/provider/profile-provider/presentation/controller/show-provider-profile/sho-prof-provider-controller.dart';

class ShowProfileProviderBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(ShowProfileProviderController());
  }

}