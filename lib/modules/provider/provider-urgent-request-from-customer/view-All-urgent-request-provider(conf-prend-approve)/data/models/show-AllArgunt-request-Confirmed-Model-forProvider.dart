class ViewAllUrgentRequestConfirmedForProviderFromUser {
  List<ConfirmedRequestUrgent> confirmedServices_urgent=[];

  ViewAllUrgentRequestConfirmedForProviderFromUser({required this.confirmedServices_urgent});

  ViewAllUrgentRequestConfirmedForProviderFromUser.fromJson(Map<String, dynamic> json) {
    confirmedServices_urgent = (json['confirmed_services'] as List)
          .map((i) => ConfirmedRequestUrgent.fromJson(i))
          .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.confirmedServices_urgent != null) {
      data['confirmed_services'] =
          this.confirmedServices_urgent.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ConfirmedRequestUrgent {
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

  ConfirmedRequestUrgent(
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

  ConfirmedRequestUrgent.fromJson(Map<String, dynamic> json)
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

