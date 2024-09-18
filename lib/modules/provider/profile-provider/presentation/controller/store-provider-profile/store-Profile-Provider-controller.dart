import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/core_components/pop_up.dart';
import '../../../../../../core/data_state/data_state.dart';
import '../../../../../../core/handler/handler.dart';
import '../../../../../customer/profile-Customer/data/data_source/profile-user-data-source.dart';
import '../../../data/data_source/profile-provider-data-source.dart';
import '../../screens/profile-provider_Screen.dart';

class StoreProfileProviderController extends GetxController {

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

  void storProfProvider() async {
    print("....... status 1 in screen store profile .......");
    print(status);
    if (!formKey.currentState!.validate())
      return;
    _dataState = const DataState(status: DataStatus.loading);
    print('.............loading..........');
    showLoader();
    print("....... status 2 in screen store profile .......");
    print(status);
    print(".... _path value of picture .......");
    print(_path);
    _dataState = await handle<void>(
            () =>
            ProfileProviderDataSource.store_provider_profile(
               // provider_id:1, //user_id_Controller.hashCode,
                name:nameController.text,
                email: emailController.text,
                phone_number:phoneController.text,
                address:addressController.text,
                profile_image: _path
            ));
    print("....... status 3 in screen store profile .......");
    print(status);
    print('.............success..........');

    Get.toNamed(ProviderProfile.name);

    // Get.back();
    if(status == DataStatus.error){
      print("....... status 4 in screen store profile .......");
      print(status);
    showSnackBar(_dataState.message);
    print('.............error..........');

    }
    else{
      print("True .... Get.to(CustomerProfile());. from StorCustomerprofile....");

    }
  }

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