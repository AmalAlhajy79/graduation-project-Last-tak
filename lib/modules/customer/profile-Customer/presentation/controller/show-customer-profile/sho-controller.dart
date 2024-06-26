import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/core_components/pop_up.dart';
import '../../../../../../core/data_state/data_state.dart';
import '../../../../../../core/handler/handler.dart';
import '../../../data/data_source/profile-user-data-source.dart';
import '../../../data/models/show-user-profile-model.dart';
import '../../screens/profile_Customer_Screen.dart';

class ShowProfileUserController extends GetxController {
  var city = 'Agra'.obs;
  var isLoading = true.obs;
  var ShowAllProviderAdvi_Status = false;
 // ShowAllProviderAdviceService service= new ShowAllProviderAdviceService();
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

    profile.value= await ProfileUserDataSource.show_user_profile();//service.showAllProvider_Advic();
 //print();
    print("Yeeeeeeeeeesssss...2....");
    //isLoding(false);
    super.onReady();
  }

}