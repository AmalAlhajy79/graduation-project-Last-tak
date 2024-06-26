// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:tt/modules/customer/profile-Customer/data/models/show-provi-bycustom-profile-model.dart';
//
// import '../../../../../../core/core_components/pop_up.dart';
// import '../../../../../../core/data_state/data_state.dart';
// import '../../../../../../core/handler/handler.dart';
// import '../../../data/data_source/profile-provider-data-source.dart';
// import '../../screens/profile_Customer_Screen.dart';
//
// class ShowProfileUserController extends GetxController {
//
//   var city = 'Agra'.obs;
//   // final TextEditingController user_id_Controller = TextEditingController();
//   // final TextEditingController nameController = TextEditingController();
//   // final TextEditingController emailController = TextEditingController();
//   // final TextEditingController addressController = TextEditingController();
//   // final TextEditingController phoneController = TextEditingController();
//   //
//   // String? _path;
//   //
//   // void setPath(String? newPath) {
//   //   _path = newPath;
//   // }
//
//   //final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//
//
//   //DataState<void> _dataState = DataState<void>();
//
//   DataState<ShowUserProfileModel> _dataState =const DataState<ShowUserProfileModel>(
//       status: DataStatus.loading
//   );
//
//   DataStatus get status => _dataState.status;
//   ShowUserProfileModel get data => _dataState.data!;
//   String get error => _dataState.message;
//
//   void showProfCustom() async {
//     _dataState = const DataState<ShowUserProfileModel>(status: DataStatus.loading);
//
//     showLoader();
//     //ProfileUserDataSource.show_user_profile();
//     // _dataState = await handle<ShowUserProfileModel>(
//     //         () =>ProfileUserDataSource.show_user_profile(
//     //            //To update
//     //         ));
//
//     Get.back();
//     if(status == DataStatus.error){
//       showSnackBar(_dataState.message);
//     }
//     else{
//       print("True .... Get.to(CustomerProfile());. from ShowCustomerprofile....");
//       Get.to(CustomerProfile());
//       //Get.offAllNamed(BooksScreen.name);
//     }
//   }
//
//   @override
//   void dispose() {
//     // user_id_Controller.dispose();
//     // emailController.dispose();
//     // nameController.dispose();
//     // phoneController.dispose();
//     // addressController.dispose();
//     super.dispose();
//   }
//
//   @override
//   void onReady() {
//     super.onReady();
//     showProfCustom();
//   }
// }