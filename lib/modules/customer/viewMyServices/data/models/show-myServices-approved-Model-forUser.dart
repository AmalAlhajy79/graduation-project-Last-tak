class MyServicesApproveForUserModel {
  List<ApprovedServices> approvedServices=[];

  MyServicesApproveForUserModel({required this.approvedServices});

  MyServicesApproveForUserModel.fromJson(Map<String, dynamic> json) {
  //  if (json['approved_services'] != null) {
      approvedServices = (json['approved_services'] as List)
      .map((i) => ApprovedServices.fromJson(i))
      .toList();
    //   json['approved_services'].forEach((v) {
    //     approvedServices.add(new ApprovedServices.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.approvedServices != null) {
      data['approved_services'] =
          this.approvedServices.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ApprovedServices {
 int id=0;
  String serviceProviderName='';
  String serviceProviderNumber='';
  String serviceName='';
  String address='';
  String time='';
  String date='';

  ApprovedServices(
      {
       required this.id,
        required this.serviceProviderName,
        required this.serviceProviderNumber,
        required this.serviceName,
        required this.address,
        required this.time,
        required this.date});

  ApprovedServices.fromJson(Map<String, dynamic> json) {
   id = json['id'];
    serviceProviderName = json['service_provider_name'];
    serviceProviderNumber = json['service_provider_number'];
    serviceName = json['service_name'];
    address = json['address'];
    time = json['time'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['service_provider_name'] = this.serviceProviderName;
    data['service_provider_number'] = this.serviceProviderNumber;
    data['service_name'] = this.serviceName;
    data['address'] = this.address;
    data['time'] = this.time;
    data['date'] = this.date;
    return data;
  }
}





// class MyServicesApproveForUserModel {
//   List<ApprovedServices> pendingServices;
//
//   MyServicesApproveForUserModel({required this.pendingServices});
//
//   MyServicesApproveForUserModel.fromJson(Map<String, dynamic> json)
//       : pendingServices = (json['approved_services'] as List)
//       .map((i) => ApprovedServices.fromJson(i))
//       .toList();
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['approved_services'] =
//         this.pendingServices.map((v) => v.toJson()).toList();
//     return data;
//   }
// }
//
// class ApprovedServices {
//   // int id;
//   String serviceProviderName;
//   String serviceProviderNumber;
//   String serviceName;
//   String address;
//   String time;
//   String date;
//   String status;
//
//   ApprovedServices(
//       {
//         //this.id,
//         required this.serviceProviderName,
//         required this.serviceProviderNumber,
//         required this.serviceName,
//         required this.address,
//         required this.time,
//         required this.date,
//         required this.status
//       });
//
//
//   ApprovedServices.fromJson(Map<String, dynamic> json)
//   // id = json['id'];
//       : serviceProviderName = json['service_provider_name'],
//         serviceProviderNumber = json['service_provider_number'],
//         serviceName = json['service_name'],
//         address = json['address'],
//         time = json['time'],
//         date = json['date'],
//         status = json['status'];
//
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     // data['id'] = this.id;
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
