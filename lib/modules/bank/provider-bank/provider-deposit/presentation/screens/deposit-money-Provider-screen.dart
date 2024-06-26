
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
import '../../../../../../core/consts/app_colors.dart';
import '../../../../../../core/core_components/app_scaffold.dart';
import '../../../../../../core/core_components/app_submit_button.dart';
import '../components/app_text_form_feild.dart';
import '../controller/deposit-provider-bank-account/deposit-Provider-binding.dart';
import '../controller/deposit-provider-bank-account/deposit-Provider-controller.dart';

class DepositProviderScreen extends GetView<DepositProviderController> {
  const DepositProviderScreen({Key? key}) : super(key: key);

  static const name = '/depositProviderScreen';
  static final page = GetPage(
      name: name,
      page: () => const DepositProviderScreen(),
      binding: DepositProviderBinding()
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
                      height: 8.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 0.1.w,
                        right: 0.1.w,
                        bottom: 7.7.w
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_sharp, color: AppColors.green),
                          Text(
                            " Deposit money",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
                          )
                        ],
                      ),
                    ),


                    SizedBox(
                      height: 13.w,
                    ),
                    Row(
                      children: [

                        Text(
                          "To deposit your money in your account \n"
                              " enter your amount here :",
                          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14,color: AppColors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.w,
                    ),
                    AppTextFormField(
                      icon: Icon(Icons.money,color: AppColors.orange,),
                      hint: 'Enter your amount',
                      // isPass: true,
                      keyboardType: TextInputType.number,
                      controller: controller.amountController,
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
                      height: 16.w,
                    ),
                    AppSubmitButton(
                      onTap:(){ controller.depositProviderBank();}  //controller.storeAccountUserBank(,'hhh','','',1),
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