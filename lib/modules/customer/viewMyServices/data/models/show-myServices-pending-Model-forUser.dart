class MyServicesPendingForUserModel {
  List<PendingServices> pendingServices;

  MyServicesPendingForUserModel({required this.pendingServices});

  MyServicesPendingForUserModel.fromJson(Map<String, dynamic> json)
      : pendingServices = (json['pending_services'] as List)
      .map((i) => PendingServices.fromJson(i))
      .toList();



  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pending_services'] =
        this.pendingServices.map((v) => v.toJson()).toList();
    return data;
  }
}

class PendingServices {
  int id;
  String serviceProviderName;
  String serviceProviderNumber;
  String serviceName;
  String address;
  String time;
  String date;
  String status;

  PendingServices(
      {
        required this.id,
        required this.serviceProviderName,
        required this.serviceProviderNumber,
        required this.serviceName,
        required this.address,
        required this.time,
        required this.date,
        required this.status
      });

  PendingServices.fromJson(Map<String, dynamic> json)
   : id = json['id'],
   serviceProviderName = json['service_provider_name'],
     serviceProviderNumber = json['service_provider_number'],
    serviceName = json['service_name'],
    address = json['address'],
    time = json['time'],
    date = json['date'],
    status = json['status'];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['service_provider_name'] = this.serviceProviderName;
    data['service_provider_number'] = this.serviceProviderNumber;
    data['service_name'] = this.serviceName;
    data['address'] = this.address;
    data['time'] = this.time;
    data['date'] = this.date;
    data['status'] = this.status;
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
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['pending_services'] =
//         this.pendingServices.map((v) => v.toJson()).toList();
//     return data;
//   }
// }
//
// class PendingServices {
//   String address;
//   String status;
//   String date;
//   int id;
//
//
//   PendingServices({
//     required this.address,
//     required this.status,
//     required this.date,
//     required this.id
//   });
//
//   PendingServices.fromJson(Map<String, dynamic> json)
//       : address = json['address'],
//         status = json['status'],
//         id = json['id'],
//   date = json['date'];
//
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['address'] = this.address;
//     data['status'] = this.status;
//     data['id'] = this.id;
//     data['date'] = this.date;
//     return data;
//   }
// }
//
