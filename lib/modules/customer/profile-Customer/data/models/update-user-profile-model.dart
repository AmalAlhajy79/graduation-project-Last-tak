// class StoreUserProfileModel {
//   String message='';
//  late Data data;
//
//   StoreUserProfileModel({required this.message, required this.data});
//
//   StoreUserProfileModel.fromJson(Map<String, dynamic> json) {
//     message = json['message'];
//     data = (json['data'] != null ? new Data.fromJson(json['data']) : null)!;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['message'] = this.message;
//     if (this.data != null) {
//       data['data'] = this.data.toJson();
//     }
//     return data;
//   }
// }
//
// class Data {
//   //int id;
//   //int userId;
//   String name='';
//   String profileImage='';
//   String email='';
//  // Null emailVerifiedAt;
//   String address='';
//   String phoneNumber='';
//   // String createdAt;
//   // String updatedAt;
//
//   Data(
//       {
//         // this.id,
//         // this.userId,
//         required this.name,
//         required  this.profileImage,
//         required  this.email,
//       //  this.emailVerifiedAt,
//         required  this.address,
//         required this.phoneNumber,
//         // this.createdAt,
//         // this.updatedAt
//       });
//
//   Data.fromJson(Map<String, dynamic> json) {
//     // id = json['id'];
//     // userId = json['User_id'];
//     name = json['name'];
//     profileImage = json['profile_image'];
//     email = json['email'];
//    // emailVerifiedAt = json['email_verified_at'];
//     address = json['address'];
//     phoneNumber = json['phone_number'];
//     // createdAt = json['created_at'];
//     // updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     // data['id'] = this.id;
//     // data['User_id'] = this.userId;
//     data['name'] = this.name;
//     data['profile_image'] = this.profileImage;
//     data['email'] = this.email;
//    // data['email_verified_at'] = this.emailVerifiedAt;
//     data['address'] = this.address;
//     data['phone_number'] = this.phoneNumber;
//     // data['created_at'] = this.createdAt;
//     // data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }