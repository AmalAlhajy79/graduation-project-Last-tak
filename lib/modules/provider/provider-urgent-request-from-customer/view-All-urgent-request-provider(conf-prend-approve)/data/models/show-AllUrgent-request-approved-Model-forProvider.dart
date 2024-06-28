class ViewAllAprovedUrgentRequestForProviderFromUserModel {
  List<ApprovedRequestUrgent> approvedServices_urgent=[];

  ViewAllAprovedUrgentRequestForProviderFromUserModel({required this.approvedServices_urgent});

  ViewAllAprovedUrgentRequestForProviderFromUserModel.fromJson(Map<String, dynamic> json)

     : approvedServices_urgent = (json['approved_services'] as List)
      .map((i) => ApprovedRequestUrgent.fromJson(i))
      .toList();


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.approvedServices_urgent != null) {
      data['approved_services'] =
          this.approvedServices_urgent.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ApprovedRequestUrgent {
  int id;
  int userId;
  int providerId;
  int serviceId;
  String requestedTime;
  String requestedDate;
  String note;
  String status;
  var qrCode;
  // String createdAt;
  // String updatedAt;
  String serviceName;

  ApprovedRequestUrgent(
      {required this.id,
        required this.userId,
        required this.providerId,
        required this.serviceId,
        required this.requestedTime,
        required this.requestedDate,
        required this.note,
        required this.status,
        this.qrCode,
        // this.createdAt,
        // this.updatedAt,
        required this.serviceName});

  ApprovedRequestUrgent.fromJson(Map<String, dynamic> json)
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
    // data['created_at'] = this.createdAt;
    // data['updated_at'] = this.updatedAt;
    data['service_name'] = this.serviceName;
    return data;
  }
}




// class MyServicesApproveForUserModel {
//   List<ApprovedServices> approvedServices=[];
//
//   MyServicesApproveForUserModel({required this.approvedServices});
//
//   MyServicesApproveForUserModel.fromJson(Map<String, dynamic> json) {
//   //  if (json['approved_services'] != null) {
//       approvedServices = (json['approved_services'] as List)
//       .map((i) => ApprovedServices.fromJson(i))
//       .toList();
//     //   json['approved_services'].forEach((v) {
//     //     approvedServices.add(new ApprovedServices.fromJson(v));
//     //   });
//     // }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.approvedServices != null) {
//       data['approved_services'] =
//           this.approvedServices.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class ApprovedServices {
//  int id=0;
//   String serviceProviderName='';
//   String serviceProviderNumber='';
//   String serviceName='';
//   String address='';
//   String time='';
//   String date='';
//
//   ApprovedServices(
//       {
//        required this.id,
//         required this.serviceProviderName,
//         required this.serviceProviderNumber,
//         required this.serviceName,
//         required this.address,
//         required this.time,
//         required this.date});
//
//   ApprovedServices.fromJson(Map<String, dynamic> json) {
//    id = json['id'];
//     serviceProviderName = json['service_provider_name'];
//     serviceProviderNumber = json['service_provider_number'];
//     serviceName = json['service_name'];
//     address = json['address'];
//     time = json['time'];
//     date = json['date'];
//   }
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
//     return data;
//   }
// }
//
//
