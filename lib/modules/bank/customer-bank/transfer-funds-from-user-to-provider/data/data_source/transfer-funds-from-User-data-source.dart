
import 'dart:convert';

import '../../../../../../core/consts/api_const.dart';
import '../../../../../../core/network/network_helper.dart';




class TransferFundsFromUserToProviderDataSource{


  Future<void> transferFundsFromUsernew(int user_id,int provider_id,int amount,int service_id) async {
    print(".............before excut response...............\n");
    print(".............url...............\n");
    print(ApiConst.transferFundsBankUsernew(user_id,provider_id,amount,service_id));
    final response = await NetworkHelper().post(ApiConst.transferFundsBankUsernew(user_id,provider_id,amount,service_id));
    print(".............response.statusCode...............\n");
    print(response.statusCode);
    //ملاحظة لازم تكون قيمة ال amount تساوي سعر الخدمة مشان يشتغل و اذا مان كانت نفس القيمة بيضرب إيرور
    if (response.statusCode == 200) {

      print(" transferFunds form User to Provider done successfully");
    } else if(response.statusCode==400){
      print("Transferred amount does not correspond to the price of the service");
    }
    else{

      print("Failed to transferFunds form User to Provider");
      return Future.error("Failed to transferFunds for User");
    }
  }



}