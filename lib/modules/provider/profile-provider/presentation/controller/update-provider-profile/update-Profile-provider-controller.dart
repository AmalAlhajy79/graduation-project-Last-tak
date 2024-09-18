import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/core_components/pop_up.dart';
import '../../../../../../core/data_state/data_state.dart';
import '../../../../../../core/handler/handler.dart';
import '../../../data/data_source/profile-provider-data-source.dart';
import '../../screens/profile-provider_Screen.dart';

class Update_ProfileProviderController extends GetxController {
  final TextEditingController user_id_Controller = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  String? _path;

  void setPath(String? newPath) {
    _path = newPath;
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  DataState<void> _dataState = DataState<void>();

  DataStatus get status => _dataState.status;
  void updateProfProvider() async {
    print("....... status 1 in screen store profile .......");
    print(status);
    if (!formKey.currentState!.validate())
      return;
   // // _dataState = const DataState(status: DataStatus.loading);
   //  print('.............loading..........');
   // // showLoader();
   //  print("....... status 2 in screen store profile .......");
   //  print(status);
   //  print(".... _path value of picture .......");
   //  print(_path);
   //
            await ProfileProviderDataSource
               .update_provider_profile(
               // provider_id:1, //user_id_Controller.hashCode,
              id:12,
                name:nameController.text,
                email: emailController.text,
                phone_number:phoneController.text,
                address:addressController.text,
                profile_image: _path,
            );

     Get.toNamed(ProviderProfile.name);

  // Get.toNamed(ProviderProfile.name);

   // Get.back();
   //  if(status == DataStatus.error){
   //    print("....... status 4 in screen store profile .......");
   //    print(status);
   //    showSnackBar(_dataState.message);
   //    print('.............error..........');
   //
   //  }
   //  else{
   //    print("True .... Get.to(CustomerProfile());. from StorCustomerprofile....");
   //
   //  }
  }
  // void updateProfProvider() async {
  //   if (!formKey.currentState!.validate()) return;
  //   _dataState = const DataState(status: DataStatus.loading);
  //   print("....... status 1 in screen update profile .......");
  //   print(status);
  //   if (!formKey.currentState!.validate())
  //     return;
  //   _dataState = const DataState(status: DataStatus.loading);
  //   print('.............loading..........');
  //   showLoader();
  //   print("....... status 2 in screen update profile .......");
  //   print(status);
  //   print(".... _path value of picture .......");
  //   print(_path);
  //
  //   showLoader();
  //   _dataState = await handle<void>(() =>
  //       ProfileProviderDataSource.update_provider_profile(
  //              id: 3, // user_id_Controller.hashCode
  //               name: //"amal23",
  //              nameController.text,
  //               email: //"amal23@gmail.com",
  //               emailController.text,
  //               phone_number: //"0987654322",
  //               phoneController.text,
  //               address: //"Damascus,yabrod",
  //               addressController.text,
  //               profile_image: _path,
  //       ));
  //   print("....... status 3 in screen update profile .......");
  //   print(status);
  //   Get.toNamed(ProviderProfile.name);
  //   // Get.back();
  //   print("............DataStatus.......\n");
  //
  //   if (status == DataStatus.error) {
  //     print("....... status 4 in screen update profile .......");
  //     print(status);
  //     showSnackBar(_dataState.message);
  //     print('.............error..........');
  //
  //   } else {
  //     print(
  //         "True .... Get.to(CustomerProfile());. from updateCustomerprofile....");
  //
  //     //Get.offAllNamed(BooksScreen.name);
  //   }
  // }

  @override
  void dispose() {
    user_id_Controller.dispose();
    emailController.dispose();
    nameController.dispose();
    phoneController.dispose();
    addressController.dispose();
    super.dispose();
  }
}
