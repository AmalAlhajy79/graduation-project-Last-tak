
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';

import '../../../../../../core/consts/app_colors.dart';
import '../../../../../../core/core_components/app_scaffold.dart';
import '../../../../../../core/core_components/app_submit_button.dart';
import '../../../../../../core/core_components/image_selector.dart';
import '../../../../../provider/home/mainDrawer.dart';
import '../../../../../provider/home/mainScreen.dart';
import '../components/app_text_form_feild.dart';
import '../components/dialog-subscription.dart';
import '../controller/subscription-payment-provider-bank-account/subscription-payment-Provider-binding.dart';
import '../controller/subscription-payment-provider-bank-account/subscription-payment-Provider-controller.dart';


class SubscriptionPaymentProviderScreen extends GetView<SubscriptionPaymentProviderController> {
  const SubscriptionPaymentProviderScreen({Key? key}) : super(key: key);

  static const name = '/subscriptionPaymentProviderScreen';
  static final page = GetPage(
      name: name,
      page: () => const SubscriptionPaymentProviderScreen(),
      binding: SubscriptionPaymentProviderBinding()
  );

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    int _selectedIndex = 0;
    return AppScaffold(
      drawer: MainDrawer(),
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
              SizedBox(
                height: 9.w,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 0.6.w,
                    right: 0.1.w,
                    bottom: 7.w
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_sharp, color: AppColors.green),),

                    Text(
                      "Subscription Payment",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.w).copyWith(top: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(
                      height: 19.5.w,
                    ),

                    AppTextFormField(
                      icon: Icon(Icons.email,color: AppColors.orange,),
                      hint: 'Enter your email',
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.emailController,
                      // validator: (val){
                      //   if(val == null || val.isEmpty)
                      //     return 'name is required.';
                      // },
                    ),
                    SizedBox(
                      height: 5.4.w,
                    ),
                    AppTextFormField(
                      icon: Icon(Icons.password,color: AppColors.orange,),
                      hint: 'Enter your password',
                      keyboardType: TextInputType.text,
                      controller: controller.passwordController,
                      // validator: (val){
                      //   if(val == null || val.isEmpty)
                      //     return 'email is required.';
                      //   if(!val.isEmail)
                      //     return 'email is invalid.';
                      // },
                    ),

                    SizedBox(
                      height: 13.w,
                    ),
                    AppSubmitButton(
                      onTap:(){
                        Get.dialog(
                          AlertDialog(
                            // title: Text('Cancel Reservation'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Center(
                                  child: Text(
                                    'Sure you want to subscribe?',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                SizedBox(height: 10),

                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () async{
                                  await  controller.subscriptionPaymentProviderBank();
                                  Get.toNamed(MainScreen.name);
                                },
                                child: Text('Submit'),
                              ),
                            ],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                          ),
                          barrierDismissible: false,
                        );
                        //showConfirmSubscriptionDialog(context);//,controller.emailController,controller.passwordController);
                        // controller.subscriptionPaymentProviderBank();
                      }  //controller.storeAccountUserBank(,'hhh','','',1),
                    ),
                    SizedBox(
                      height: 5.w,
                    ),

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
        bottomNavigationBar:Container(
          height: 15.w,
          decoration: BoxDecoration(
            //  color: Colors.yellowAccent,//.withAlpha(1500),
            gradient: LinearGradient(
                colors: [
                  Colors.cyan.shade900,
                  Colors.cyan.shade800,
                  Colors.cyan.shade800,
                  Colors.cyan.shade600,
                  AppColors.cyan.withOpacity(0.8),
                  AppColors.cyan.withOpacity(0.3),
                  AppColors.white.withAlpha(4)
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight
            ),

          ),
          child: BottomNavigationBar(
            //useLegacyColorScheme: false,
            backgroundColor: AppColors.cyan.withOpacity(0.5),//green,
            //Colors.cyan.shade700 ,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(

                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 26,
                ),
                label: '',

              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_sharp, color: Colors.white, size: 26),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.white, size: 26),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: AppColors.green,
            // unselectedItemColor:AppColors.white ,
            onTap: (value) => print("AA..........AA"),
          ),
        )
    );
  }
}