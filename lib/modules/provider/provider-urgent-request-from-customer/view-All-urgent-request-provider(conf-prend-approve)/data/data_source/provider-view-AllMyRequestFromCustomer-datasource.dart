import 'dart:convert';

import '../../../../../../core/consts/api_const.dart';
import '../../../../../../core/network/network_helper.dart';
import '../../presentation/controller/show-All-Urgent_request-controller.dart';
import '../models/show-AllArgunt-request-Confirmed-Model-forProvider.dart';
import '../models/show-AllUrgent-request-approved-Model-forProvider.dart';
import '../models/show-AllUrgent-request-pending-Model-forProvider.dart';



class ViewAllUrgentRequestFromCustomerForProviderDataSource {
  late final ProviderAllUrgentRequestFromCustomerController requestController;

  ViewAllUrgentRequestFromCustomerForProviderDataSource(this.requestController);

  Future<void> fetchAllRequest() async {
    if (requestController.serviceStatus.value == 'pending') {
      final response = await NetworkHelper().get(ApiConst.provider_showAllUrgentRequestPending);

      if (response.statusCode == 200) {
        final jsonData = response.data;
        print(jsonData);
        print("AAAAAAAAAAAAAAAAAAAA");

        var services = ViewAllUrgentRequestForProviderFromUserModel.fromJson(jsonData).serviceRequests_urgent;
        if (services != null) {
          requestController.pendingServices_urgent.value= services;
        } else {
          requestController.pendingServices_urgent.clear();
        }
        print("BBBBBBBBBBBBBBb");
      } else {
        print("** error in server or field **");
        return Future.error("error...............");
      }
    } else if (requestController.serviceStatus.value == 'approved') {
      // serviceController.url = 'http://127.0.0.1:8001/api/user/approved-services';
      final response = await NetworkHelper().get(ApiConst.provider_showAllUrgentRequestApproved);

      if (response.statusCode == 200) {
        final jsonData = response.data;
        print(jsonData);
        print("AAAAAAAAAAAAAAAAAAAA");

        var services = ViewAllAprovedUrgentRequestForProviderFromUserModel.fromJson(jsonData).approvedServices_urgent;
        if (services != null) {
          requestController.approvedServices_urgent.value = services;
        } else {
          requestController.approvedServices_urgent.clear();
        }
        print("BBBBBBBBBBBBBBb");
      } else {
        print("** error in server or field **");
        return Future.error("error...............");
      }
    } else if (requestController.serviceStatus.value == 'confirmed') {
      // serviceController.url = 'http://127.0.0.1:8001/api/user/confirmed-services';
      final response = await NetworkHelper().get(ApiConst.provider_showAllUrgentRequestConfirmed);

      if (response.statusCode == 200) {
        final jsonData = response.data;
        print(jsonData);
        print("AAAAAAAAAAAAAAAAAAAA");

        var services = ViewAllUrgentRequestConfirmedForProviderFromUser.fromJson(jsonData).confirmedServices_urgent;//update to confirmedservice
        if (services != null) {
          requestController.confirmedServices_urgent.value = services;
        } else {
          requestController.confirmedServices_urgent.clear();
        }
        print("BBBBBBBBBBBBBBb");
      } else {
        print("** error in server or field **");
        return Future.error("error...............");
      }
    }
  }
  Future<void> cancelReservation(int id, String reason) async {
    // final url = 'http://192.168.43.31:8001/api/reservations/$id/cancel?reason=$reason&status=cancelled';
    final response = await NetworkHelper().post(ApiConst.CancelReservationUserMyServices(id, reason));

    if (response.statusCode == 200) {

      print("Reservation cancelled successfully");
    } else {
      print("Failed to cancel the reservation");
      return Future.error("Failed to cancel the reservation");
    }
  }

}
