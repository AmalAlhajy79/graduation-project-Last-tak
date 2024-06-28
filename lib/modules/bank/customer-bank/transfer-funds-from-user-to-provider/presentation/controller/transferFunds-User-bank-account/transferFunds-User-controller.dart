import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/data_state/data_state.dart';
import '../../../data/data_source/transfer-funds-from-User-data-source.dart';

class TransferFundsUserController extends GetxController {

  final TextEditingController amountController = TextEditingController();

int amount=0;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  DataState<void> _dataState = DataState<void>();

  DataStatus get status => _dataState.status;
  Future<void> transferFundsUserBank() async {
    int amount = int.tryParse(amountController.text) ?? 0;
    print('amount......');
    print(amount);
    await TransferFundsFromUserToProviderDataSource().transferFundsFromUsernew(1,1, amount,1);
    // await depositUserDataSource().depositUsernew(1, amountController.hashCode);
  }

  @override
  void dispose() {
   amountController.dispose();

    super.dispose();
  }
}
