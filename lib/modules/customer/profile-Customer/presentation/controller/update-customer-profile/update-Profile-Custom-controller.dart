import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/core_components/pop_up.dart';
import '../../../../../../core/data_state/data_state.dart';
import '../../../../../../core/handler/handler.dart';
import '../../../data/data_source/profile-user-data-source.dart';
import '../../screens/profile_Customer_Screen.dart';

class Update_ProfileUserController extends GetxController {
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

  void updateProfCustom() async {
    if (!formKey.currentState!.validate()) return;
    _dataState = const DataState(status: DataStatus.loading);

    showLoader();
    _dataState = await handle<void>(() =>
        ProfileUserDataSource.update_user_profile(
               id: 1, // user_id_Controller.hashCode
                name: //"amal23",
               nameController.text,
                email: //"amal23@gmail.com",
                emailController.text,
                phone_number: //"0987654322",
                phoneController.text,
                address: //"Damascus,yabrod",
                addressController.text,
                profile_image: _path,
        ));
    //     AuthDataSource.register(
    //     email: emailController.text,
    //     password: passController.text,
    //     name: nameController.text,
    //     image: _path
    // ));
    Get.back();
    if (status == DataStatus.error) {
      showSnackBar(_dataState.message);
    } else {
      print(
          "True .... Get.to(CustomerProfile());. from updateCustomerprofile....");
      Get.toNamed('/showCustomerProfile');
      //Get.offAllNamed(BooksScreen.name);
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
