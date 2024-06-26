
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
import '../../../../../core/consts/app_colors.dart';
import '../../../../../core/core_components/app_scaffold.dart';
import '../../../../../core/core_components/image_selector.dart';
import '../../../../../core/core_components/app_submit_button.dart';
import '../components/app_text_form_feild.dart';
import '../controller/store-customer-profile/store-Profile-Custom-binding.dart';
import '../controller/store-customer-profile/store-Profile-Custom-controller.dart';
import '../controller/update-customer-profile/update-Profile-Custom-binding.dart';
import '../controller/update-customer-profile/update-Profile-Custom-controller.dart';


class Update_UserProfileScreen extends GetView<Update_ProfileUserController> {
  const Update_UserProfileScreen({Key? key}) : super(key: key);

  static const name = '/updateUserProfile';
  static final page = GetPage(
      name: name,
      page: () => const Update_UserProfileScreen(),
      binding: Update_ProfileUserBinding()
  );

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    int _selectedIndex = 0;
    return AppScaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Center(
            child: Text(
              "SERVICES",
              style: TextStyle(
                  color: AppColors.green, fontSize: 15, fontWeight: FontWeight.bold),
            )),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //const AuthHeader(),
              Padding(
                padding: EdgeInsets.all(5.w).copyWith(top: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 0.1.w,
                          right: 0.1.w,

                      ),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_sharp, color: AppColors.green),
                          Text(
                            " Update Profile",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                          )
                        ],
                      ),
                    ),

                    Center(
                        child:ImageSelector(
                            onSelected: controller.setPath
                        )
                    ),
                    AppTextFormField(
                      icon: Icon(Icons.person),
                      hint: 'name',
                      controller: controller.nameController,
                      // validator: (val){
                      //   if(val == null || val.isEmpty)
                      //     return 'name is required.';
                      // },
                    ),
                    SizedBox(
                      height: 3.5.w,
                    ),
                    AppTextFormField(
                      icon: Icon(Icons.email_outlined),
                      hint: 'email',
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.emailController,
                      // validator: (val){
                      //   if(val == null || val.isEmpty)
                      //     return 'email is required.';
                      //   if(!val.isEmail)
                      //     return 'email is invalid.';
                      // },
                    ),
                    SizedBox(
                      height: 3.5.w,
                    ),
                    AppTextFormField(
                      icon: Icon(Icons.house_outlined),
                      hint: 'address',
                      isPass: true,
                      controller: controller.addressController,
                      // validator: (val){
                      //   if(val == null || val.isEmpty)
                      //     return 'address is required.';
                      //  },
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    AppTextFormField(
                      icon: Icon(Icons.phone),
                      hint: 'phone number',
                      isPass: true,
                      controller: controller.phoneController,
                      // validator: (val){
                      //   if(val == null || val.isEmpty) {
                      //     return 'phone number is required.';
                      //   }
                      //   if(val.length < 10 ||val.length == 10) {
                      //     return 'password must be at 10 characters.';
                      //   }
                      // },
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    AppSubmitButton(
                      onTap: controller.updateProfCustom,
                    ),
                    SizedBox(
                      height: 5.w,
                    ),
                    // NavigateText(
                    //   text1: 'if you already have an account, you can ',
                    //   text2: 'Login now.',
                    //   onTap: ()=>Get.offAllNamed(LoginScreen.name),
                    // ),
                    SizedBox(
                      height: mq.viewInsets.bottom,
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}