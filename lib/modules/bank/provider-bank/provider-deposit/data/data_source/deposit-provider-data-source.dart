
import 'dart:convert';

import '../../../../../../core/consts/api_const.dart';
import '../../../../../../core/network/network_helper.dart';




class depositProviderDataSource{


  Future<void> depositProvidernew(int amount) async {
print("......url...........");
print(ApiConst.depositProviderrnew(amount));
    final response = await NetworkHelper().post(ApiConst.depositProviderrnew(amount));

    if (response.statusCode == 200) {

      print(" Provider deposited successfully");
    } else {
      print("Failed to deposited for provider");
      return Future.error("Failed to deposited for provider");
    }
  }



}