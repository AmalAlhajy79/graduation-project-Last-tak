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
  String address;
  String status;
  String date;
  int id;


  PendingServices({
    required this.address,
    required this.status,
    required this.date,
    required this.id
  });

  PendingServices.fromJson(Map<String, dynamic> json)
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

