
import 'dart:convert';

import '../../../../../../core/consts/api_const.dart';
import '../../../../../../core/network/network_helper.dart';




class depositUserDataSource{


  Future<void> depositUsernew(int User_id,int amount) async {
    print(".............before excut response...............\n");
    print(".............url...............\n");
    print(ApiConst.depositUsernew(User_id,amount));
    final response = await NetworkHelper().post(ApiConst.depositUsernew(User_id,amount));
    print(".............response.statusCode...............\n");
    print(response.statusCode);
    if (response.statusCode == 200) {

      print(" User deposited successfully");
    } else {
      print("Failed to deposited for User");
      return Future.error("Failed to deposited for User");
    }
  }



}