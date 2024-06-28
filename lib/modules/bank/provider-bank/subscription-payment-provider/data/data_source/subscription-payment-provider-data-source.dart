
import 'dart:convert';

import '../../../../../../core/consts/api_const.dart';
import '../../../../../../core/network/network_helper.dart';




class SubscriptionPaymentProviderDataSource{

  Future<void> subscriptionpaymentProvidernew( String token,String email,String password) async {
    // final url = 'http://127.0.0.1:8001/api/bank-account-information?account_number=2&account_holder_name=amal2&bank_name=barka2&branch_code=112233&user_id=1';
    final response = await NetworkHelper().post(ApiConst.subscription_paymentProvidernew(token,email,password));

    if (response.statusCode == 200) {

      print("create Provider Bank account successfully");
    } else {
      print("Failed to create Provider Bank account");
      return Future.error("Failed to create Provider Bank account");
    }
  }



}