import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/core_components/pop_up.dart';
import '../../../../../../../core/data_state/data_state.dart';
import '../../../../../../../core/handler/handler.dart';
import '../../../data/data_source/store-account-user-data-source.dart';

class StoreAccountUserController extends GetxController {
  var city = "Damacsus".obs;

  final TextEditingController user_id_Controller = TextEditingController();
  final TextEditingController account_numberController = TextEditingController();
  final TextEditingController bank_nameController = TextEditingController();
  final TextEditingController account_holder_nameController = TextEditingController();
  final TextEditingController branch_codeController = TextEditingController();

  String? _path;

  void setPath(String? newPath) {
    _path = newPath;
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  DataState<void> _dataState = DataState<void>();

  DataStatus get status => _dataState.status;
  Future<void> storeAccountUserBank(int account_number, String account_holder_name,String bank_name,String branch_code,int user_id) async {
    await StoreAccountUserDataSource().storbankusernew(account_number, account_holder_name, bank_name, branch_code, user_id);
  }
  // void storAccountBankCustom() async {
  //   print("....... status 1 in screen store user account bank .......");
  //   print(status);
  //   if (!formKey.currentState!.validate()) return;
  //   _dataState = const DataState(status: DataStatus.loading);
  //   print('.............loading..........');
  //   showLoader();
  //   print("....... status 2 in screen store user account bank .......");
  //   print(status);
  //
  //   _dataState = await handle<void>(() =>
  //       StoreAccountUserDataSource.store_Bank_Account_user(
  //               User_id: 1,
  //               account_number: account_numberController.hashCode,
  //               bank_name: bank_nameController.text,
  //               account_holder_name: account_holder_nameController.text,
  //               branch_code: branch_codeController.text)
  //           );
  //   print("....... status 3 in screen store user account bank .......");
  //   print(status);
  //   print('.............success..........');
  //
  //   //     AuthDataSource.register(
  //   //     email: emailController.text,
  //   //     password: passController.text,
  //   //     name: nameController.text,
  //   //     image: _path
  //   // ));
  //   Get.back();
  //   if (status == DataStatus.error) {
  //     print("....... status 4 in screen store user account bank .......");
  //     print(status);
  //     showSnackBar(_dataState.message);
  //     print('.............error..........');
  //   } else {
  //     print(
  //         "True .... Get.to(screen)....");
  //     //Get.to(CustomerProfile());
  //     //Get.offAllNamed(BooksScreen.name);
  //   }
  // }

  @override
  void dispose() {
    bank_nameController.dispose();
    user_id_Controller.dispose();
    account_holder_nameController.dispose();
    account_numberController.dispose();
    branch_codeController.dispose();
    super.dispose();
  }
}
