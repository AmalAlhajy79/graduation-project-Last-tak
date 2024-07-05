import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/data_source/profile-provider-data-source.dart';
import '../../data/models/show-provi-bycustom-profile-model.dart';

class ShowProfileProviderByCustomController extends GetxController {
  var city = 'Agra'.obs;
  var isLoading = true.obs;
  var ShowAllProviderAdvi_Status = false;

  var isLoding=true.obs;
      Rx<Profile> profile=
      Profile(
      name: "",
      profileImage: "",
      email: "",
      address: "",
      phoneNumber: "").obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async{
    print("Yeeeeeeeeeesssss...1....");
   //await ProfileUserDataSource.show_user_profile();

    profile.value= await ProfileProviderByCustomDataSource.show_provider_profile();//service.showAllProvider_Advic();
 //print();
    print("Yeeeeeeeeeesssss...2....");
    //isLoding(false);
    super.onReady();
  }




}