class MyServicesConfirmedForUserModel {
  List<ConfirmedServices> pendingServices;

  MyServicesConfirmedForUserModel({required this.pendingServices});

  MyServicesConfirmedForUserModel.fromJson(Map<String, dynamic> json)
      : pendingServices = (json['confirmed_services'] as List)
      .map((i) => ConfirmedServices.fromJson(i))
      .toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['confirmed_services'] =
        this.pendingServices.map((v) => v.toJson()).toList();
    return data;
  }
}

class ConfirmedServices {
  String address;
  String status;
  String date;
  int id;
  ConfirmedServices({
    required this.address,
    required this.status,
    required this.date,
    required this.id
  });

  ConfirmedServices.fromJson(Map<String, dynamic> json)
      : address = json['address'],
        status = json['status'],
        id = json['id'],
        date = json['date'];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['status'] = this.status;
    data['id'] = this.id;
    data['date'] = this.date;
    return data;
  }
}

