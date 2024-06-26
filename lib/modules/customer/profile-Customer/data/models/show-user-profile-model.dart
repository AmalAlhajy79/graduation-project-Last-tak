import 'dart:convert';
ShowUserProfileModel ShowUserProfileModelModelFromJson(String str) => ShowUserProfileModel.fromJson(json.decode(str));

class ShowUserProfileModel {
  Profile profile;
  //User user;

  ShowUserProfileModel({required this.profile});

  factory ShowUserProfileModel.fromJson(Map<String, dynamic> json) {
    print("NNNNNNNNNNNNn");
    print(json);
    return ShowUserProfileModel(
       profile: Profile.fromJson(json['profile']),
    );
  }
}
// class ShowUserProfileModel {
//   Profile profile ;
//   // = new Profile(
//   //     name: "",
//   //     profileImage: "",
//   //     email: "",
//   //     address: "",
//   //     phoneNumber: ""); // add initialised value to profile to run
//   //User user;
//
//   ShowUserProfileModel({required this.profile});
//
//   factory ShowUserProfileModel.fromJson(Map<String, dynamic> json) =>
//       ShowUserProfileModel(
//         profile:
//         Profile.fromJson(json["profile"].map((x) => Profile.fromJson(x))),
//       );
//
//   // ShowUserProfileModel.fromJson(Map<dynamic, dynamic> json) {
//   //   profile = (json['profile'] != null
//   //       ? new Profile.fromJson(json['profile'])
//   //       : null)!;
//   // }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.profile != null) {
//       data['profile'] = this.profile!.toJson();
//     }
//     // if (this.user != null) {
//     //   data['user'] = this.user.toJson();
//     // }
//     return data;
//   }
// }

class Profile {
  // int id;
  // int userId;
  String name = '';
  String profileImage = '';
  String email = '';

  //Null emailVerifiedAt;
  String address = '';
  String phoneNumber = '';

  // String createdAt;
  // String updatedAt;

  Profile({
    // this.id,
    // this.userId,
    required this.name,
    required this.profileImage,
    required this.email,
    //  this.emailVerifiedAt,
    required this.address,
    required this.phoneNumber,
    // this.createdAt,
    // this.updatedAt
  });

  Profile.fromJson(Map<String, dynamic> json) {
    // id = json['id'];
    // userId = json['User_id'];
    print("TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT");
    name = json['name'];
    print(name);
    profileImage = json['profile_image'];
    email = json['email'];
    //emailVerifiedAt = json['email_verified_at'];
    address = json['address'];
    phoneNumber = json['phone_number'];
    // createdAt = json['created_at'];
    // updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // data['id'] = this.id;
    // data['User_id'] = this.userId;
    data['name'] = this.name;
    data['profile_image'] = this.profileImage;
    data['email'] = this.email;
    //data['email_verified_at'] = this.emailVerifiedAt;
    data['address'] = this.address;
    data['phone_number'] = this.phoneNumber;
    // data['created_at'] = this.createdAt;
    // data['updated_at'] = this.updatedAt;
    return data;
  }
}

// class ProfileModel {
//   final int? id;
//   final int? userId;
//   final String name;
//   final String profileImage;
//   final String email;
//   final String ?emailVerifiedAt;
//   final String address;
//   final String phoneNumber;
//   final String? createdAt;
//   final String ?updatedAt;
//
//   ProfileModel({
//     required this.id,
//     required this.userId,
//     required this.name,
//     required this.profileImage,
//     required this.email,
//     required this.emailVerifiedAt,
//     required this.address,
//     required this.phoneNumber,
//     required this.createdAt,
//     required this.updatedAt,
//   });
//
//   factory ProfileModel.fromJson(Map<String, dynamic> json) {
//     return ProfileModel(
//       id: json['id'],
//       userId: json['User_id'],
//       name: json['name'],
//       profileImage: json['profile_image'],
//       email: json['email'],
//       emailVerifiedAt: json['email_verified_at'],
//       address: json['address'],
//       phoneNumber: json['phone_number'],
//       createdAt: json['created_at'],
//       updatedAt: json['updated_at'],
//     );
//   }
// }

class UserModel {
  final int id;
  final String name;
  final String email;
  final String phone;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
    );
  }
}

// class User {
//   int id;
//   String name;
//   String email;
//   Null emailVerifiedAt;
//   String phone;
//   String token;
//   Null randomToken;
//   int approved;
//   String createdAt;
//   String updatedAt;
//   Profile profile;
//
//   User(
//       {this.id,
//         this.name,
//         this.email,
//         this.emailVerifiedAt,
//         this.phone,
//         this.token,
//         this.randomToken,
//         this.approved,
//         this.createdAt,
//         this.updatedAt,
//         this.profile});
//
//   User.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     email = json['email'];
//     emailVerifiedAt = json['email_verified_at'];
//     phone = json['phone'];
//     token = json['token'];
//     randomToken = json['randomToken'];
//     approved = json['approved'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     profile =
//     json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['email'] = this.email;
//     data['email_verified_at'] = this.emailVerifiedAt;
//     data['phone'] = this.phone;
//     data['token'] = this.token;
//     data['randomToken'] = this.randomToken;
//     data['approved'] = this.approved;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     if (this.profile != null) {
//       data['profile'] = this.profile.toJson();
//     }
//     return data;
//   }
// }
