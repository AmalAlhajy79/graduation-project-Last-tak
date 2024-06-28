
import 'dart:convert';


import '../../../../../core/consts/api_const.dart';
import '../../../../../core/network/network_helper.dart';
import '../models/show-user-profile-model.dart';

class ProfileUserDataSource{

  static Future<void> store_user_profile({
    required int User_id,
    required String name,
    required String email,
    required String phone_number,
    required String address,
     String? profile_image
  })
  async{
    var response = await NetworkHelper().post(
        ApiConst.storeuserProfile,
        body: {
          'User_id': User_id,
          'name': name,
          'email': email,
          'phone_number': phone_number,
          'address': address
        },
        files: {
          if(profile_image != null)
            'profile_image':profile_image
        }
    );
    // String token = response.data['token'];
    // await Stor
    // ageHandler().setToken(token);
  }


  static Future<Profile> show_user_profile() async {
    var response = await NetworkHelper().get(ApiConst.show_userProfile(1));

    if (response.statusCode == 200) {
     // var jsonResponse = jsonDecode(response.data);
      print("------------- profile -----------");
     // print(jsonResponse);
//////
      final jsonData = response.data;
      print(jsonData);
      print("AAAAAAAAAAAAAAAAAAAA");
      return ShowUserProfileModel.fromJson(jsonData).profile;
      //////
      // var prof = ShowUserProfileModel.fromJson(jsonResponse);
      // return prof.profile;
    } else {
      print("** error in server or field **");
      return Future.error("error...............");
    }
  }

  static Future<void> update_user_profile({
    required int id,
    required String name,
    required String email,
    required String phone_number,
    required String address,
    required String? profile_image
  })
  async{
    var response = await NetworkHelper().post(
        ApiConst.updateuserProfile(id),
        body: {
          'name': name,
          'email': email,
          'phone_number': phone_number,
          'address': address
        },
        files: {
          if(profile_image != null)
            'profile_image':profile_image
        }
    );

  }

  static Future<void> destroy_user_profile(int id)async{
    await NetworkHelper().delete(ApiConst.destroyuserProfile(id),);
  }

}