import 'dart:convert';

import '../../../../../core/consts/api_const.dart';
import '../../../../../core/network/network_helper.dart';
import '../../presentation/controller/show-my-services/show-my-services-controller.dart';
import '../models/show-myServices-Confirmed-Model-forUser.dart';
import '../models/show-myServices-approved-Model-forUser.dart';
import '../models/show-myServices-pending-Model-forUser.dart';



class ViewMyServicesUserConfApprovedPendingDataSource {
  final ServiceController serviceController;

  ViewMyServicesUserConfApprovedPendingDataSource(this.serviceController);

  Future<void> fetchServices() async {
    if (serviceController.serviceStatus.value == 'pending') {
      //serviceController.url = 'http://127.0.0.1:8001/api/user/pending-cancelled-services';
      final response = await NetworkHelper().get(ApiConst.userShowMyServicesPending);

      if (response.statusCode == 200) {
        final jsonData = response.data;
        print(jsonData);
        print("AAAAAAAAAAAAAAAAAAAA");

        var services = MyServicesPendingForUserModel.fromJson(jsonData).pendingServices;
        if (services != null) {
          serviceController.pendingServices.value = services;
        } else {
          serviceController.pendingServices.clear();
        }
        print("BBBBBBBBBBBBBBb");
      } else {
        print("** error in server or field **");
        return Future.error("error...............");
      }
    } else if (serviceController.serviceStatus.value == 'approved') {
     // serviceController.url = 'http://127.0.0.1:8001/api/user/approved-services';
      final response = await NetworkHelper().get(ApiConst.userShowMyServicesApproved);

      if (response.statusCode == 200) {
        final jsonData = response.data;
        print(jsonData);
        print("AAAAAAAAAAAAAAAAAAAA");

        var services = MyServicesApproveForUserModel.fromJson(jsonData).approvedServices;
        if (services != null) {
          serviceController.approvedServices.value = services;
        } else {
          serviceController.approvedServices.clear();
        }
        print("BBBBBBBBBBBBBBb");
      } else {
        print("** error in server or field **");
        return Future.error("error...............");
      }
    } else if (serviceController.serviceStatus.value == 'confirmed') {
     // serviceController.url = 'http://127.0.0.1:8001/api/user/confirmed-services';
      final response = await NetworkHelper().get(ApiConst.userShowMyServicesConfirmed);

      if (response.statusCode == 200) {
        final jsonData = response.data;
        print(jsonData);
        print("AAAAAAAAAAAAAAAAAAAA");

        var services = MyServicesConfirmedForUserModel.fromJson(jsonData).confirmedServices;//update to confirmedservice
        if (services != null) {
          serviceController.confirmedServices.value = services;
        } else {
          serviceController.confirmedServices.clear();
        }
        print("BBBBBBBBBBBBBBb");
      } else {
        print("** error in server or field **");
        return Future.error("error...............");
      }
    }
  }
  Future<void> cancelReservation(int id, String reason) async {
    final response = await NetworkHelper().post(ApiConst.CancelReservationUserMyServices(id, reason));

    if (response.statusCode == 200) {

      print("Reservation cancelled successfully");
    } else {
      print("Failed to cancel the reservation");
      return Future.error("Failed to cancel the reservation");
    }
  }
 
}
