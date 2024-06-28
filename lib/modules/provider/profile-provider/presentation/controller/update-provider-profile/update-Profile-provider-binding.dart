import 'package:get/get.dart';
import 'package:newtes1/modules/provider/profile-provider/presentation/controller/update-provider-profile/update-Profile-provider-controller.dart';

class Update_ProfileProviderBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(Update_ProfileProviderController());
  }

}