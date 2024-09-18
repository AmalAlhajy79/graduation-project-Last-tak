
import 'dart:convert';


import '../../../../../core/consts/api_const.dart';
import '../../../../../core/network/network_helper.dart';
import '../models/show-provider-profile-model.dart';

class ProfileProviderDataSource{


  static Future<ProfileProvider> show_provider_profile() async {
    var response = await NetworkHelper().get(ApiConst.show_providerProfile(1));

    if (response.statusCode == 200) {
     // var jsonResponse = jsonDecode(response.data);
      print("------------- profile -----------");
    // print(jsonResponse);
//////
      final jsonData = response.data;
      print(jsonData);
      print("AAAAAAAAAAAAAAAAAAAA");
      return ShowProviderProfileModel.fromJson(jsonData).profile_provider;
      //////
      // var prof = ShowUserProfileModel.fromJson(jsonResponse);
      // return prof.profile;
    } else {
      print("** error in server or field **");
      return Future.error("error...............");
    }
  }

  static Future<void> store_provider_profile({
    //required int provider_id,
    required String name,
    required String email,
    required String phone_number,
    required String address,
    String? profile_image
  })
  async{
    var response = await NetworkHelper().post(
        ApiConst.storeproviderProfile,
        body: {
        //  'provider_id': provider_id,
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

  static Future<void> update_provider_profile({
    required int id,
    required String name,
    required String email,
    required String phone_number,
    required String address,
     String? profile_image
  })
  async{
    print(id);
    print(name);
    print(email);
    print(phone_number);
    print(address);
    print(profile_image);
    var response = await NetworkHelper().put(
       ApiConst.updateproviderProfile(id,name,email,address,phone_number),
        // body: {
        //   'name': name,
        //   'email': email,
        //   'address': address,
        //   'phone_number': phone_number
        // },
        files: {
          if(profile_image != null)
            'profile_image':profile_image
        }
    );
print('.............response.........');
print(response.data.toString());
  }

  static Future<void> destroy_provider_profile(int id)async{
    await NetworkHelper().delete(ApiConst.destroyproviderProfile(id),);
  }


}