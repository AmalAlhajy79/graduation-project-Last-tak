
import 'dart:convert';


import '../../../../../core/consts/api_const.dart';
import '../../../../../core/network/network_helper.dart';
import '../models/show-provi-bycustom-profile-model.dart';

class ProfileProviderByCustomDataSource{


  static Future<Profile> show_provider_profile() async {
    var response = await NetworkHelper().get(ApiConst.show_userProfile(1));// update

    if (response.statusCode == 200) {
     // var jsonResponse = jsonDecode(response.data);
      print("------------- profile -----------");
     // print(jsonResponse);
//////
      final jsonData = response.data;
      print(jsonData);
      print("AAAAAAAAAAAAAAAAAAAA");
      return ShowProviderProfileByCustomModel.fromJson(jsonData).profile;
      //////
      // var prof = ShowUserProfileModel.fromJson(jsonResponse);
      // return prof.profile;
    } else {
      print("** error in server or field **");
      return Future.error("error...............");
    }
  }

}