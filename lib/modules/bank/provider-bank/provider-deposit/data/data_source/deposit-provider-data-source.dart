
import 'dart:convert';

import '../../../../../../core/consts/api_const.dart';
import '../../../../../../core/network/network_helper.dart';




class depositProviderDataSource{


  Future<void> depositProvidernew(int provider_id,int amount) async {
print("......url...........");
print(ApiConst.depositProviderrnew(provider_id,amount));
    final response = await NetworkHelper().post(ApiConst.depositProviderrnew(provider_id,amount));

    if (response.statusCode == 200) {

      print(" Provider deposited successfully");
    } else {
      print("Failed to deposited for provider");
      return Future.error("Failed to deposited for provider");
    }
  }



}