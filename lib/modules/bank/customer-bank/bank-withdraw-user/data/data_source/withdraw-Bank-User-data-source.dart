
import 'dart:convert';

import '../../../../../../core/consts/api_const.dart';
import '../../../../../../core/network/network_helper.dart';




class WithdrawBankUserDataSource{


  Future<void> withdrawBankUsernew(int user_id,int amount) async {
    print(".............before excut response...............\n");
    print(".............url...............\n");
    print(ApiConst.withdrawBankUsernew(user_id,amount));
    final response = await NetworkHelper().post(ApiConst.withdrawBankUsernew(user_id,amount));
    print(".............response.statusCode...............\n");
    print(response.statusCode);
    if (response.statusCode == 200) {

      print(" User WithdrawBank successfully");
    } else {
      print("Failed to WithdrawBank for User");
      return Future.error("Failed to WithdrawBank for User");
    }
  }



}