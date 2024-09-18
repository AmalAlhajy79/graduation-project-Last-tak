import 'dart:convert';

import 'package:get/get.dart';

import '../../../../../../core/consts/api_const.dart';
import '../../../../../../core/network/network_helper.dart';
import '../../presentation/controller/provider-details-request-controller.dart';
import '../models/provider-details-request-approved-model.dart';
import '../models/provider-details-request-confermed-model.dart';
import '../models/provider-details-request-pending-model.dart';



class ProviderDetailsMyRequestFromCustomerDataSource {
  late final ProviderDetailsRequestController detailsRequestController;

  ProviderDetailsMyRequestFromCustomerDataSource(this.detailsRequestController);

  Future<void> fetchDetailsRequest(int id) async {
    if (detailsRequestController.serviceStatus.value == 'pending') {
      final response = await NetworkHelper().get(ApiConst.provider_showDetailsUrgentRequestPending(id));
print("api............");
print(ApiConst.provider_showDetailsUrgentRequestPending(id));
      if (response.statusCode == 200) {
        final jsonData = response.data;
        // print(jsonData);
        // print("AAAAAAAAAAAAAAAAAAAA");
        var services = ProviderDetailsRequestPendingModel.fromJson(jsonData).requestDetails_urgent ;
        if (services != null) {
         //  print('...........serviceName');
         // print( services.serviceName);
          detailsRequestController.requestDetailsPending.value= services as RequestDetailsPending ;
        } else {
          detailsRequestController.requestDetailsPending.close();
        }
        // print("BBBBBBBBBBBBBBb");
      } else {
        print("** error in server or field **");
        return Future.error("error...............");
      }
    } else if (detailsRequestController.serviceStatus.value == 'approved') {
      final response = await NetworkHelper().get(ApiConst.provider_showDetailsUrgentRequestApproved(id));
      print("api............");
      print(ApiConst.provider_showDetailsUrgentRequestPending(id));
      if (response.statusCode == 200) {
        final jsonData = response.data;
        print(jsonData);
        print("AAAAAAAAAAAAAAAAAAAA");

        var services = ProviderDetailsRequestApprovedModel.fromJson(jsonData).requestDetails_urgent;
        if (services != null) {
          detailsRequestController.requestDetailsApproved.value= services as RequestDetailsApproved ;
        } else {
          detailsRequestController.requestDetailsApproved.close();
        }
        print("BBBBBBBBBBBBBBb");
      } else {
        print("** error in server or field **");
        return Future.error("error...............");
      }
    } else if (detailsRequestController.serviceStatus.value == 'confirmed') {
      final response = await NetworkHelper().get(ApiConst.provider_showDetailsUrgentRequestConfirmed(id));
      print("api............");
      print(ApiConst.provider_showDetailsUrgentRequestPending(id));
      if (response.statusCode == 200) {
        final jsonData = response.data;
        print(jsonData);
        print("AAAAAAAAAAAAAAAAAAAA");

        var services = ProviderDetailsRequestConfirmedModel.fromJson(jsonData).requestDetails_urgent;//update to confirmedservice
        if (services != null) {
          detailsRequestController.requestDetailsConfermed.value = services as RequestDetailsConfirmed;
        } else {
          detailsRequestController.requestDetailsConfermed.close();
        }
        print("BBBBBBBBBBBBBBb");
      } else {
        print("** error in server or field **");
        return Future.error("error...............");
      }
    }
  }
  Future<void> cancelReservation(int id) async {
    final response = await NetworkHelper().post(ApiConst.deleteReservationFromProviderDetailsRequest(id));

    if (response.statusCode == 200) {

      print("Reservation cancelled successfully");
    } else {
      print("Failed to cancel the reservation");
      return Future.error("Failed to cancel the reservation");
    }
  }

  Future<void> approveReservationProvider(id, approved) async{
    final response = await NetworkHelper().post(ApiConst.approveReservationProviderMyServices(id,approved));

    if (response.statusCode == 200) {
      print("............aprrove...");
      print("Reservation approved successfully");
    } else {
      print("....no........aprrove...");
      print("Failed to approved the reservation");
      return Future.error("Failed to approved the reservation");
    }
  }

}
