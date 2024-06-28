import 'package:get/get.dart';
import 'package:newtes1/modules/bank/provider-bank/subscription-payment-provider/presentation/controller/subscription-payment-provider-bank-account/subscription-payment-Provider-controller.dart';

class SubscriptionPaymentProviderBinding extends Bindings {

  @override
  void dependencies() {
    Get.put(SubscriptionPaymentProviderController());
  }

}