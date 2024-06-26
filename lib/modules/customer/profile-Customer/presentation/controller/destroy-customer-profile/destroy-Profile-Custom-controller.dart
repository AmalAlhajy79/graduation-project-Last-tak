// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:newtes1/modules/customer/profile-Customer/data/data_source/profile-provider-data-source.dart';
// import 'package:newtes1/modules/customer/profile-Customer/presentation/screens/profile_Customer_Screen.dart';
//
// import '../../../../../../core/core_components/pop_up.dart';
// import '../../../../../../core/data_state/data_state.dart';
// import '../../../../../../core/handler/handler.dart';
//
// class DestroyProfileUserController extends GetxController {
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
//   DataState<void> _dataState = DataState<void>();
//
//   DataStatus get status => _dataState.status;
//
//   void destroyProfCustom() async {
//     // if (!formKey.currentState!.validate())
//     //   return;
//     _dataState = const DataState(status: DataStatus.loading);
//
//     showLoader();
//     _dataState =
//         await handle<void>(() =>
//             ProfileUserDataSource.destroy_user_profile(1) // update id
//         );
//
//     Get.back();
//     if (status == DataStatus.error) {
//       showSnackBar(_dataState.message);
//     } else {
//       print(
//           "True .... Get.to(CustomerProfile());. from destroyCustomerprofile....");
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
// }
