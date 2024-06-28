


import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../data/data_source/provider-view-AllMyRequestFromCustomer-datasource.dart';
import '../../data/models/show-AllArgunt-request-Confirmed-Model-forProvider.dart';
import '../../data/models/show-AllUrgent-request-approved-Model-forProvider.dart';
import '../../data/models/show-AllUrgent-request-pending-Model-forProvider.dart';


class ProviderAllUrgentRequestFromCustomerController extends GetxController {
  var serviceStatus = 'pending'.obs;
  var pendingServices_urgent = <ServiceRequestsUrgent>[].obs;
  var approvedServices_urgent = <ApprovedRequestUrgent>[].obs;
  var confirmedServices_urgent = <ConfirmedRequestUrgent>[].obs;

  @override
  void onInit() {
    super.onInit();
    // fetchmyServices(); // Fetch initial services
  }

  @override
  void onReady() {
    fetchAllUrgentRequestForProvider(); // Fetch initial services
    super.onReady();
  }

  void setRequestStatus(String status) {
    serviceStatus.value = status;
    fetchAllUrgentRequestForProvider();
  }

  String url = '';

  Future<void> fetchAllUrgentRequestForProvider() async {
    await ViewAllUrgentRequestFromCustomerForProviderDataSource(this).fetchAllRequest();
  }

  Future<void> cancelReservation(int id, String reason) async {
    await ViewAllUrgentRequestFromCustomerForProviderDataSource(this).cancelReservation(id, reason);
  }

}
