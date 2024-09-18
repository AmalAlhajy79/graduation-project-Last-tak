// import '../../../../../core/consts/api_const.dart';
// import '../../../../../core/network/network_helper.dart';
// import '../models/available-provider-model.dart';
//
// class customerUrgentRequestServiceDatasource{
//   static Future<Data> available_provider() async {
//     var response = await NetworkHelper().get(ApiConst.available_provider(1));
//
//     if (response.statusCode == 200) {
//       // var jsonResponse = jsonDecode(response.data);
//       print("------------- profile -----------");
//       // print(jsonResponse);
// //////
//       final jsonData = response.data;
//       print(jsonData);
//       print("AAAAAAAAAAAAAAAAAAAA");
//       return ShowUserProfileModel.fromJson(jsonData).profile;
//       //////
//       // var prof = ShowUserProfileModel.fromJson(jsonResponse);
//       // return prof.profile;
//     } else {
//       print("** error in server or field **");
//       return Future.error("error...............");
//     }
//   }
// }