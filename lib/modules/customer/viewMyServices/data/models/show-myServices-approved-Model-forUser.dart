class MyServicesApproveForUserModel {
  List<ApprovedServices> pendingServices;

  MyServicesApproveForUserModel({required this.pendingServices});

  MyServicesApproveForUserModel.fromJson(Map<String, dynamic> json)
      : pendingServices = (json['approved_services'] as List)
      .map((i) => ApprovedServices.fromJson(i))
      .toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['approved_services'] =
        this.pendingServices.map((v) => v.toJson()).toList();
    return data;
  }
}

class ApprovedServices {
  String address;
  String status;
  String date;
  int id;

  ApprovedServices({
    required this.address,
    required this.status,
    required this.date,
    required this.id
  });

  ApprovedServices.fromJson(Map<String, dynamic> json)
      : address = json['address'],
        status = json['status'],
        id = json['id'],
        date = json['date'];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['status'] = this.status;
    data['date'] = this.date;
    return data;
  }
}

