class AvailableProviderModel {
  String message='';
  List<Data> data;

  AvailableProviderModel({required this.message, required this.data});

  AvailableProviderModel.fromJson(Map<String, dynamic> json)
      : message = json['message'],
        data = (json['data'] as List).map((v) => Data.fromJson(v)).toList();
  // AvailableProviderModel.fromJson(Map<String, dynamic> json) {
  //   message = json['message'];
  //   if (json['data'] != null) {
  //     data = new List<Data>();
  //     json['data'].forEach((v) {
  //       data.add(new Data.fromJson(v));
  //     });
  //   }
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id=0;
  String name='';
  String profileImage='';
  String serviceName='';
  String phoneNumber='';

  Data(
      {required this.id,
        required this.name,
        required this.profileImage,
        required this.serviceName,
        required this.phoneNumber});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    profileImage = json['profile_image'];
    serviceName = json['service_name'];
    phoneNumber = json['phone_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['profile_image'] = this.profileImage;
    data['service_name'] = this.serviceName;
    data['phone_number'] = this.phoneNumber;
    return data;
  }
}
