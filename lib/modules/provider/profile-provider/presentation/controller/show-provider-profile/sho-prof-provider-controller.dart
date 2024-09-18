import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/data_source/profile-provider-data-source.dart';
import '../../../data/models/show-provider-profile-model.dart';


class ShowProfileProviderController extends GetxController {
  var city = 'Agra'.obs;
  var isLoading = true.obs;
  var ShowAllProviderAdvi_Status = false;

  var isLoding=true.obs;
      Rx<ProfileProvider> profile=
          ProfileProvider(
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

    profile.value= await ProfileProviderDataSource.show_provider_profile();//service.showAllProvider_Advic();
     update();
    //print();
    print("Yeeeeeeeeeesssss...2....");
    //isLoding(false);
    super.onReady();
  }



  // DataState<ShowUserProfileModel> _dataState =const DataState<ShowUserProfileModel>(
  //     status: DataStatus.loading
  // );
  //
  // DataStatus get status => _dataState.status;
  // ShowUserProfileModel get data => _dataState.data!;
  // String get error => _dataState.message;

  // void showProfCustom() async {
  //   _dataState = const DataState<ShowUserProfileModel>(status: DataStatus.loading);
  //
  //   showLoader();
  //   //ProfileUserDataSource.show_user_profile();
  //   // _dataState = await handle<ShowUserProfileModel>(
  //   //         () =>ProfileUserDataSource.show_user_profile(
  //   //            //To update
  //   //         ));
  //
  //   Get.back();
  //   if(status == DataStatus.error){
  //     showSnackBar(_dataState.message);
  //   }
  //   else{
  //     print("True .... Get.to(CustomerProfile());. from ShowCustomerprofile....");
  //     Get.to(CustomerProfile());
  //     //Get.offAllNamed(BooksScreen.name);
  //   }
  // }



}