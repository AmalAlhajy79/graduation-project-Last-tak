import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/data_state/data_state.dart';
import '../../../data/data_source/deposit-User-data-source.dart';

class DepositUserController extends GetxController {

  final TextEditingController amountController = TextEditingController();

int amount=0;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  DataState<void> _dataState = DataState<void>();

  DataStatus get status => _dataState.status;
  Future<void> depositUserBank() async {
    int amount = int.tryParse(amountController.text) ?? 0;
    print('amount......');
    print(amount);
    await depositUserDataSource().depositUsernew(1, amount);
    // await depositUserDataSource().depositUsernew(1, amountController.hashCode);
  }

  @override
  void dispose() {
   amountController.dispose();

    super.dispose();
  }
}
