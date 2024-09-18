
import 'dart:convert';

import '../../../../../../core/consts/api_const.dart';
import '../../../../../../core/network/network_helper.dart';




class StoreAccountProviderDataSource{


  Future<void> storbankProvidernew(int account_number, String account_holder_name,String bank_name,String branch_code) async {
    // final url = 'http://127.0.0.1:8001/api/bank-account-information?account_number=2&account_holder_name=amal2&bank_name=barka2&branch_code=112233&user_id=1';
    final response = await NetworkHelper().post(ApiConst.storbankProvidernew(account_number, account_holder_name,bank_name,branch_code));

    if (response.statusCode == 200) {

      print("create Provider Bank account successfully");
    } else {
      print("Failed to create Provider Bank account");
      return Future.error("Failed to create Provider Bank account");
    }
  }



}