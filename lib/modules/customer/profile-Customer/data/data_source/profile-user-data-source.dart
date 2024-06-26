
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
//Future<ShowUserProfileModel>
//   static Future<Profile> show_user_profile() async {
//     var response = await NetworkHelper().get(ApiConst.show_userProfile(2));
//     var ts=response.data;
//     print(ts);
//     print('*********************************');
//     print(response.statusCode);
//     print(response.data['profile']);
//     print('********************************');
//
//     if(response.statusCode==200){
//      // var jsonResponse = jsonDecode(response.data);/////////////////////////////////
//       print("Truuuuuuuuuuuuuu-----------uuuuuuuuuuuuuuuuuuuu");
//       print("------------- profile -----------");
//       print(response.data);////////////////////////////////////////////
//       print("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww ");
//       // print(jsonResponse["ااااااااااااااا"]);
//      // print(jsonResponse["details"][0]["question"]);////////////////////////////////////////////
//       //ShowUserProfileModelModelFromJson
//       //var prof= ShowUserProfileModelModelFromJson(response.data);
//      // var pr=response.data['profile'];
//
//       var proff =ShowUserProfileModel.fromJson(response.data);
//       return proff.profile;
//     }
//     else{
//       print("** error in server or field **");
//       //message='server error';
//     return Future.error("error...............");
//
//     }
// //      var prof = response.data['profile'];
// //   //  ShowUserProfileModel showUserProfileModel=ShowUserProfileModel.fromJson(response.data);
// //
// //      print("******************");
// //     // print(showUserProfileModel.profile.address);
// //   //   prof.map((e) => ShowUserProfileModel.fromJson(e)).toList;
// //     // print(prof.map((e) => ShowUserProfileModel.fromJson(e)).toList);
// // if(response.statusCode==200){
// //   print(">>>>>>>True.....................");
// //   print(prof['name']);
// //   //////
// //   var profi = response.data['profile'];
// //   print(profi);
// //  // var emaill = response.data['profile']['email'];
// //   //var nym = jsonData['name'].toString();
// //   print("*******.......1.....*************");
// //
// //   /////////
// //  // var jsonData = json.decode(response);
// //   print("*******.......2.....*************");
// // //  print(jsonData[2].toString());
// //   final  jsonData = json.decode(response.data);
// //   return ShowUserProfileModel.fromJson(jsonData['profile']);
// //   // return prof.map(
// //   //            (e) => ShowUserProfileModel.fromJson(e)
// //   //     );//ShowUserProfileModel.fromJson(jsonData);
// //
// //
// //
// // }else{
// //   return Future.error(".........Erorr......");
// // }
//
//     // return prof.map(
//     //         (e) => ShowUserProfileModel.fromJson(e)
//     // ).toList();// delete .toList()
//   }


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