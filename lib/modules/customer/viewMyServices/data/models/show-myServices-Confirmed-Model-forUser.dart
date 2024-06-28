class MyServicesConfirmedForUserModel {
  List<ConfirmedServices> confirmedServices=[];

  MyServicesConfirmedForUserModel({required this.confirmedServices});

  MyServicesConfirmedForUserModel.fromJson(Map<String, dynamic> json) {
   // if (json['confirmed_services'] != null) {
      confirmedServices = (json['confirmed_services'] as List)
          .map((i) => ConfirmedServices.fromJson(i))
          .toList();
    //   json['confirmed_services'].forEach((v) {
    //     confirmedServices.add(new ConfirmedServices.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.confirmedServices != null) {
      data['confirmed_services'] =
          this.confirmedServices.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ConfirmedServices {
  int id;
  String serviceProviderName;
  String serviceProviderNumber;
  String serviceName;
  String address;
  String time;
  String date;

  ConfirmedServices(
      {
        required this.id,
        required this.serviceProviderName,
        required this.serviceProviderNumber,
        required this.serviceName,
        required this.address,
        required this.time,
        required this.date});

  ConfirmedServices.fromJson(Map<String, dynamic> json)
  :id = json['id'],
   serviceProviderName = json['service_provider_name'],
    serviceProviderNumber = json['service_provider_number'],
    serviceName = json['service_name'],
    address = json['address'],
    time = json['time'],
    date = json['date'];


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



// class MyServicesConfirmedForUserModel {
//   List<ConfirmedServices> pendingServices;
//
//   MyServicesConfirmedForUserModel({required this.pendingServices});
//
//   MyServicesConfirmedForUserModel.fromJson(Map<String, dynamic> json)
//       : pendingServices = (json['confirmed_services'] as List)
//       .map((i) => ConfirmedServices.fromJson(i))
//       .toList();
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['confirmed_services'] =
//         this.pendingServices.map((v) => v.toJson()).toList();
//     return data;
//   }
// }
//
// class ConfirmedServices {
//   // int id;
//   String serviceProviderName;
//   String serviceProviderNumber;
//   String serviceName;
//   String address;
//   String time;
//   String date;
//   String status;
//
//   ConfirmedServices(
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
//   ConfirmedServices.fromJson(Map<String, dynamic> json)
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
