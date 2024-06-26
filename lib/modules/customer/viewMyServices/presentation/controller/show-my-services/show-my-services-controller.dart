


import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../data/data_source/myServices-data-source.dart';
import '../../../data/models/show-myServices-Confirmed-Model-forUser.dart';
import '../../../data/models/show-myServices-approved-Model-forUser.dart';
import '../../../data/models/show-myServices-pending-Model-forUser.dart';

class ServiceController extends GetxController {
  var serviceStatus = 'pending'.obs;
  var pendingServices = <PendingServices>[].obs;
  var approvedServices = <ApprovedServices>[].obs;
  var confirmedServices = <ConfirmedServices>[].obs;

  @override
  void onInit() {
    super.onInit();
    // fetchmyServices(); // Fetch initial services
  }

  @override
  void onReady() {
    fetchmyServices(); // Fetch initial services
    super.onReady();
  }

  void setServiceStatus(String status) {
    serviceStatus.value = status;
    fetchmyServices();
  }

  String url = '';

  Future<void> fetchmyServices() async {
    await ViewMyServicesUserConfApprovedPendingDataSource(this).fetchServices();
  }

  Future<void> cancelReservation(int id, String reason) async {
    await ViewMyServicesUserConfApprovedPendingDataSource(this).cancelReservation(id, reason);
  }

}
