import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
import 'package:newtes1/modules/provider/home/mainScreen.dart';
import 'package:newtes1/modules/provider/profile-provider/presentation/screens/store-profile-Provider-screen.dart';
import 'package:newtes1/modules/provider/profile-provider/presentation/screens/update_profile-provider-screen.dart';
import '../../../../../core/consts/app_colors.dart';
import '../../../../../core/core_components/app_scaffold.dart';
import '../../../../../core/core_components/delete-button.dart';
import '../../../../customer/profile-any-Provider-from-service-details/presentation/controller/sho-prof-provider-by-user-controller.dart';
import '../../../../customer/profile-any-Provider-from-service-details/presentation/controller/show-Profile-provider-by-Custom-binding.dart';
import '../components/field-container-profile.dart';
import '../controller/show-provider-profile/sho-prof-provider-controller.dart';
import '../controller/show-provider-profile/show-Profile-provider-binding.dart';

class ProviderProfile extends GetView<ShowProfileProviderController> {
  const ProviderProfile({Key? key}) : super(key: key);

  static const name = '/providerProfile';
  static final page = GetPage(
      name: name,
      page: () => ProviderProfile(),
      binding: ShowProfileProviderBinding());

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return AppScaffold(
      // drawer: Drawer(),
      // appBar: AppBar(
      //   title: Center(
      //       child: Text(
      //     "SERVICES",
      //     style: TextStyle(
      //         color: AppColors.green,
      //         fontSize: 15,
      //         fontWeight: FontWeight.bold),
      //   )),
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
      //   ],
      // ),
      body: Obx(
        () => ListView(
            padding: EdgeInsets.only(
              left: 1.w,
              right: 1.w,
            ),
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.w,
                      right: 4.w,
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon:
                              Icon(Icons.arrow_back_sharp, color: Colors.cyan),
                        ),
                        Text(
                          " My Profile",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.w,
                      right: 4.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Get.toNamed(StoreProviderProfileScreen.name);
                          },
                          child: Text(
                            "Add profile",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13.8,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 5.w, left: 5.w, bottom: 4.w, top: 3.6.w),
                    child: Container(
                      //  padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.withAlpha(50)),
                          borderRadius: BorderRadius.circular(5)),

                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5.0, bottom: 12.0, left: 14.0, right: 14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              //color: Colors.grey.withAlpha(40),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: CircleAvatar(
                                        maxRadius: 20,
                                        backgroundColor: Colors.grey.shade500,
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                          size: 35,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "${controller.profile.value.name}",
                                      //"User Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    ),
                                    SizedBox(
                                      width: 45.w / 1.1, //////////////
                                    ),
                                    Expanded(
                                      child: IconButton(
                                          onPressed: () {
                                            Get.toNamed(
                                                Update_ProviderProfileScreen
                                                    .name);
                                          },
                                          icon: Icon(
                                            Icons.edit_outlined,
                                            color: Colors.orange,
                                          )),
                                    )
                                  ]),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            FieldContainerProfile(
                              title: "Phone Number",
                              value: "${controller.profile.value.phoneNumber}",
                              // "+963-987654321",
                              colorContainer: AppColors.greyfield.withAlpha(30),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FieldContainerProfile(
                              title: "E-mail",
                              value: "${controller.profile.value.email}",
                              //"serviceprovider@gmaill.com",
                              colorContainer: AppColors.greyfield.withAlpha(30),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FieldContainerProfile(
                              title: "Address",
                              value: "${controller.profile.value.address}",
                              //"Damascus,syria",
                              colorContainer: AppColors.greyfield.withAlpha(30),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FieldContainerProfile(
                              title: "Number of services provided",
                              value: "12 services",
                              colorContainer: AppColors.greyfield.withAlpha(30),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.w,
                      left: 6.w,
                      right: 6.w,
                    ),
                    child: DeleteButton(
                        title: "Delete My Account",
                        icon: Icons.delete_outline_outlined,
                        onTap: () {}),
                  ),
                ],
              ),
            ]),
      ),
      // bottomNavigationBar: Container(
      //   height: 15.w,
      //   decoration: BoxDecoration(
      //     //  color: Colors.yellowAccent,//.withAlpha(1500),
      //     gradient: LinearGradient(colors: [
      //       Colors.cyan.shade900,
      //       Colors.cyan.shade800,
      //       Colors.cyan.shade800,
      //       Colors.cyan.shade600,
      //       AppColors.cyan.withOpacity(0.8),
      //       AppColors.cyan.withOpacity(0.3),
      //       AppColors.white.withAlpha(4)
      //     ], begin: Alignment.bottomLeft, end: Alignment.topRight),
      //   ),
      //   child: BottomNavigationBar(
      //     //useLegacyColorScheme: false,
      //     backgroundColor: AppColors.cyan.withOpacity(0.5),
      //     //green,
      //     //Colors.cyan.shade700 ,
      //     items: <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //           color: Colors.white,
      //           size: 26,
      //         ),
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.menu_sharp, color: Colors.white, size: 26),
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.person, color: Colors.white, size: 26),
      //         label: '',
      //       ),
      //     ],
      //     currentIndex: _selectedIndex,
      //     selectedItemColor: AppColors.green,
      //     // unselectedItemColor:AppColors.white ,
      //     onTap: (value) => print("AA..........AA"),
      //   ),
      // ),
    );
  }
}
