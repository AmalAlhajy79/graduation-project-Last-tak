class ViewAllUrgentRequestForProviderFromUserModel {
  List<ServiceRequestsUrgent> serviceRequests_urgent = [];

  ViewAllUrgentRequestForProviderFromUserModel(
      {required this.serviceRequests_urgent});

  ViewAllUrgentRequestForProviderFromUserModel.fromJson(
      Map<String, dynamic> json) {
    if (json['service_requests'] != null) {
      serviceRequests_urgent = (json['service_requests'] as List)
          .map((i) => ServiceRequestsUrgent.fromJson(i))
          .toList();
    } else {
      serviceRequests_urgent = [];
    }
  }

  // : serviceRequests_urgent = (json['pending_services'] as List)
  //   .map((i) => ServiceRequestsUrgent.fromJson(i))
  //   .toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.serviceRequests_urgent != null) {
      data['service_requests'] =
          this.serviceRequests_urgent.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ServiceRequestsUrgent {
  int id = 0;
  int userId = 0;
  int providerId = 0;
  int serviceId = 0;
  String requestedTime = '';
  String requestedDate = '';
  String note = '';
  String status = '';
  var qrCode;
  String createdAt = '';
  String updatedAt = '';
  String serviceName = '';

  ServiceRequestsUrgent(
      {required this.id,
      required this.userId,
      required this.providerId,
      required this.serviceId,
      required this.requestedTime,
      required this.requestedDate,
      required this.note,
      required this.status,
      this.qrCode,
      // required this.createdAt,
      // this.updatedAt,
      required this.serviceName});

  ServiceRequestsUrgent.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['user_id'],
        providerId = json['provider_id'],
        serviceId = json['service_id'],
        requestedTime = json['requested_time'],
        requestedDate = json['requested_date'],
        note = json['note'],
        status = json['status'],
        qrCode = json['qr_code'],
        // createdAt = json['created_at'],
        // updatedAt = json['updated_at'],
        serviceName = json['service_name'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['provider_id'] = this.providerId;
    data['service_id'] = this.serviceId;
    data['requested_time'] = this.requestedTime;
    data['requested_date'] = this.requestedDate;
    data['note'] = this.note;
    data['status'] = this.status;
    data['qr_code'] = this.qrCode;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['service_name'] = this.serviceName;
    return data;
  }
}

// class MyServicesPendingForUserModel {
//   List<PendingServices> pendingServices;
//
//   MyServicesPendingForUserModel({required this.pendingServices});
//
//   MyServicesPendingForUserModel.fromJson(Map<String, dynamic> json)
//       : pendingServices = (json['pending_services'] as List)
//       .map((i) => PendingServices.fromJson(i))
//       .toList();
//
//
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['pending_services'] =
//         this.pendingServices.map((v) => v.toJson()).toList();
//     return data;
//   }
// }
//
// class PendingServices {
//   int id;
//   String serviceProviderName;
//   String serviceProviderNumber;
//   String serviceName;
//   String address;
//   String time;
//   String date;
//   String status;
//
//   PendingServices(
//       {
//         required this.id,
//         required this.serviceProviderName,
//         required this.serviceProviderNumber,
//         required this.serviceName,
//         required this.address,
//         required this.time,
//         required this.date,
//         required this.status
//       });
//
//   PendingServices.fromJson(Map<String, dynamic> json)
//    : id = json['id'],
//    serviceProviderName = json['service_provider_name'],
//      serviceProviderNumber = json['service_provider_number'],
//     serviceName = json['service_name'],
//     address = json['address'],
//     time = json['time'],
//     date = json['date'],
//     status = json['status'];
//
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['service_provider_name'] = this.serviceProviderName;
//     data['service_provider_number'] = this.serviceProviderNumber;
//     data['service_name'] = this.serviceName;
//     data['address'] = this.address;
//     data['time'] = this.time;
//     data['date'] = this.date;
//     data['status'] = this.status;
//     return data;
//   }
// }
//
//
//
//
//
//
