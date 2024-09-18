import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/core_components/pop_up.dart';
import '../../../../../../../core/data_state/data_state.dart';
import '../../../../../../../core/handler/handler.dart';
import '../../../data/data_source/store-account-provider-data-source.dart';

class StoreAccountProviderController extends GetxController {
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
  Future<void> storeAccountProviderBank(int account_number, String account_holder_name,String bank_name,String branch_code) async {
    await StoreAccountProviderDataSource().storbankProvidernew(account_number, account_holder_name, bank_name, branch_code);
  }

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
