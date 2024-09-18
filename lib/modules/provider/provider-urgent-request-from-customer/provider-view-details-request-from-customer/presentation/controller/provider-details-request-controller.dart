


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:newtes1/modules/provider/provider-urgent-request-from-customer/provider-view-details-request-from-customer/data/models/provider-details-request-approved-model.dart';
import 'package:newtes1/modules/provider/provider-urgent-request-from-customer/provider-view-details-request-from-customer/data/models/provider-details-request-confermed-model.dart';
import 'dart:convert';

import '../../data/data_source/provider-details-request-fromUser-data-source.dart';
import '../../data/models/provider-details-request-pending-model.dart';
import '../screens/provider-detailes-request-from-customer.dart';


class ProviderDetailsRequestController extends GetxController {
  var serviceStatus = 'pending'.obs;
  var  requestDetailsApproved= RequestDetailsApproved(id: 0,description: '',note: '',requestedDate: '',requestedTime: '',serviceName: '',status: '',userAddress: '',userName: '',userPhone: '').obs;
  var  requestDetailsPending=RequestDetailsPending(id: 0,description: '',note: '',requestedDate: '',requestedTime: '',serviceName: '',status: '',userAddress: '',userName: '',userPhone: '').obs; // var  requestDetailsApproved={}.obs;//= <RequestDetailsApproved>[].obs;
  var  requestDetailsConfermed=RequestDetailsConfirmed(id: 0,description: '',note: '',requestedDate: '',requestedTime: '',serviceName: '',status: '',userAddress: '',userName: '',userPhone: '').obs;//= <RequestDetailsConfirmed>[].obs;

var id=Get.arguments as int;
  @override
  void onInit() {
    super.onInit();
    // fetchmyServices(); // Fetch initial services
  }

  @override
  void onReady() {
    fetchDetailsRequestForProvider(id); // Fetch initial services
    super.onReady();
  }

  void setRequestStatus(String status,int id) {
    serviceStatus.value = status;
   fetchDetailsRequestForProvider(id);
  }



  Future<void> fetchDetailsRequestForProvider(int id) async {
    // print(".....id....from..fetchDetailsRequestForProvider");
    // print(id);
    await ProviderDetailsMyRequestFromCustomerDataSource(this).fetchDetailsRequest(id);
  }

  Future<void> cancelReservation(int id) async {
    await ProviderDetailsMyRequestFromCustomerDataSource(this).cancelReservation(id);
  }

  Future<void> approveReservation_InProvider(id, String approved) async{
    await ProviderDetailsMyRequestFromCustomerDataSource(this).approveReservationProvider(id, approved);
  }



}
