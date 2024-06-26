
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/state_manager.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';

import '../../../../../core/consts/app_colors.dart';
import '../../../../../core/core_components/app_scaffold.dart';
import '../../../../../core/core_components/delete-button.dart';
import '../components/field-container-profile.dart';
import '../controller/show-customer-profile/sho-controller.dart';
import '../controller/show-customer-profile/show-Profile-Custom-binding.dart';
import '../controller/show-customer-profile/show-Profile-Custom-controller.dart';

class testShowProfile extends GetView<ShowProfileUserController> {
  const testShowProfile({Key? key}) : super(key: key);

  // static const name = '/showCustomerProfile';
  // static final page = GetPage(
  //     name: name,
  //     page: () => const CustomerProfile(),
  //     binding: ShowProfileUserBinding()
  // );

  @override

  Widget build(BuildContext context) {
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
        body:
        //GetBuilder<ShowProfileUserController>(
        //     builder: (_) {
        Obx(() =>  Center(child: Text("${controller.profile.value.name}",style: TextStyle(color: Colors.black,fontSize: 40),))
        ),
        //     }
        // ),

        // GetBuilder<ShowProfileUserController>(
        //     builder: (_) {
        //       return Text("${controller.data.profile.name}");
        //     }
        // ),

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
