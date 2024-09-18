
import 'dart:convert';

import '../../../../../../core/consts/api_const.dart';
import '../../../../../../core/network/network_helper.dart';




class SubscriptionPaymentProviderDataSource{

  Future<void> subscriptionpaymentProvidernew( String token,String email,String password) async {
print('jjjjjj.....');
print(token);
print(email);
print(password);
print(ApiConst.subscription_paymentProvidernew(token,email,password));
    final response = await NetworkHelper().post(ApiConst.subscription_paymentProvidernew(token,email,password));
print('aaaaaaaaa.....');
    print(response.data);
if (response.statusCode == 200) {

      print("create Provider Bank account successfully");
      print(response.data);
    } else {
      print("Failed to create Provider Bank account");
      return Future.error("Failed to create Provider Bank account");
    }
  }



}