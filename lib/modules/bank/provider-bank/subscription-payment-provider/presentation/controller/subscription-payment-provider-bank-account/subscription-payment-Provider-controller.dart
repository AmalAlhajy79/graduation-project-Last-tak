import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../core/core_components/pop_up.dart';
import '../../../../../../../core/data_state/data_state.dart';
import '../../../../../../../core/handler/handler.dart';
import '../../../data/data_source/subscription-payment-provider-data-source.dart';

class SubscriptionPaymentProviderController extends GetxController {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

   final token='kYrje6eSKuRmhUGDNKKpgUn3pQKSjCbqOfn3pdwjcIeFbOk3fmhS68pYJRSz'; // update here .................

  DataState<void> _dataState = DataState<void>();

  DataStatus get status => _dataState.status;
  Future<void> subscriptionPaymentProviderBank() async {
    await SubscriptionPaymentProviderDataSource().subscriptionpaymentProvidernew(token,emailController.text,passwordController.text);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }
}
