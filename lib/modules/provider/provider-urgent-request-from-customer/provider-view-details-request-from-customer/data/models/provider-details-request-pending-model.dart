class ProviderDetailsRequestPendingModel {
  RequestDetailsPending? requestDetails_urgent;

  ProviderDetailsRequestPendingModel({this.requestDetails_urgent});

  ProviderDetailsRequestPendingModel.fromJson(Map<String, dynamic> json) {
    requestDetails_urgent = json['request_details'] != null
        ? new RequestDetailsPending.fromJson(json['request_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.requestDetails_urgent != null) {
      data['request_details'] = this.requestDetails_urgent!.toJson();
    }
    return data;
  }
}

class RequestDetailsPending {
  int id=0;
  String serviceName='';
  String description='';
  String userName='';
 // Null userImage;
  String userAddress='';
  String userPhone='';
  String requestedDate='';
  String requestedTime='';
  String note='';
  String status='';

  RequestDetailsPending(
      {required this.id,
        required this.serviceName,
        required this.description,
        required this.userName,
      //  this.userImage,
        required this.userAddress,
        required this.userPhone,
        required this.requestedDate,
        required this.requestedTime,
        required this.note,
        required this.status});

  RequestDetailsPending.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceName = json['service_name'];
    description = json['description'];
    userName = json['user_name'];
   // userImage = json['user_image'];
    userAddress = json['user_address'];
    userPhone = json['user_phone'];
    requestedDate = json['requested_date'];
    requestedTime = json['requested_time'];
    note = json['note'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['service_name'] = this.serviceName;
    data['description'] = this.description;
    data['user_name'] = this.userName;
   // data['user_image'] = this.userImage;
    data['user_address'] = this.userAddress;
    data['user_phone'] = this.userPhone;
    data['requested_date'] = this.requestedDate;
    data['requested_time'] = this.requestedTime;
    data['note'] = this.note;
    data['status'] = this.status;
    return data;
  }
}
