import 'package:get/get.dart';
import 'package:newtes1/modules/provider/profile-provider/presentation/controller/store-provider-profile/store-Profile-Provider-controller.dart';

class StoreProfileProviderBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(StoreProfileProviderController());
  }

}