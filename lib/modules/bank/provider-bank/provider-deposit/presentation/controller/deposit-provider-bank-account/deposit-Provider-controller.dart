import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/core_components/pop_up.dart';
import '../../../../../../../core/data_state/data_state.dart';
import '../../../../../../../core/handler/handler.dart';
import '../../../data/data_source/deposit-provider-data-source.dart';

class DepositProviderController extends GetxController {

  final TextEditingController amountController = TextEditingController();


  int amount=0;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  DataState<void> _dataState = DataState<void>();

  DataStatus get status => _dataState.status;
  Future<void> depositProviderBank() async {
    int amount = int.tryParse(amountController.text) ?? 0;
    print('amount......');
    print(amount);
    await depositProviderDataSource().depositProvidernew(1, amount);
  }

  @override
  void dispose() {
    amountController.dispose();

    super.dispose();
  }
}
