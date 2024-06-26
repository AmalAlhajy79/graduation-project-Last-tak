import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/state_manager.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';

import '../../../../../core/consts/app_colors.dart';
import '../../../../../core/core_components/app_scaffold.dart';
import '../../../../../core/core_components/delete-button.dart';
import '../components/field-container-profile.dart';
import '../controller/show-customer-profile/sho-controller.dart';
import '../controller/show-customer-profile/show-Profile-Custom-binding.dart';

class CustomerProfile extends GetView<ShowProfileUserController> {
  const CustomerProfile({Key? key}) : super(key: key);

  static const name = '/showCustomerProfile';
  static final page = GetPage(
      name: name,
      page: () => const CustomerProfile(),
      binding: ShowProfileUserBinding());

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
                color: AppColors.green,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          )),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
          ],
        ),
        body: Obx(() => ListView(
                padding: EdgeInsets.only(
                  left: 1.w,
                  right: 1.w,
                ),
                children: [
                  Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: 4.w, right: 4.w, top: 1.9.w),
                        child: Container(
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: AppColors.greyfield.withAlpha(27),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(2.5.w),
                                ),
                                hintText: 'search',
                                hintStyle: TextStyle(
                                    fontSize: 13.2,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black45),
                                prefixIcon: const Icon(
                                  CupertinoIcons.search,
                                  size: 14,
                                  color: AppColors.greyfield,
                                )),
                            //   controller:// controller.searchBoxController,
                            // //  textInputAction: TextInputAction.search,
                            //  onEditingComplete: controller.showSearchResult
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 19.5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.w,
                          right: 4.w,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_sharp,
                                color: AppColors.green),
                            Text(
                              " My Profile",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: 5.w, left: 5.w, bottom: 4.w, top: 7.w),
                        child: Container(
                          //  padding: EdgeInsets.all(4.w),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.grey.withAlpha(50)),
                              borderRadius: BorderRadius.circular(5)),

                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 6.0,
                                bottom: 12.0,
                                left: 14.0,
                                right: 14.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  //color: Colors.grey.withAlpha(40),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          child: CircleAvatar(
                                            maxRadius: 20,
                                            backgroundColor:
                                                Colors.grey.shade500,
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
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.edit_outlined,
                                                color: Colors.orange,
                                              )),
                                        )
                                      ]),
                                ),
                                SizedBox(
                                  height: 8.8.w,
                                ),
                                FieldContainerProfile(
                                  title: "Phone Number",
                                  value:
                                      "${controller.profile.value.phoneNumber}"
                                  // "+963-987654321"
                                  ,
                                  height: 12.w,
                                  colorContainer:
                                      AppColors.greyfield.withAlpha(20),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                FieldContainerProfile(
                                  title: "E-mail",
                                  value:
                                      "${controller.profile.value.email}" //"customer@gmaill.com"
                                  ,
                                  height: 12.w,
                                  colorContainer:
                                      AppColors.greyfield.withAlpha(20),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                FieldContainerProfile(
                                  title: "Address",
                                  value:
                                      "${controller.profile.value.address}" //"Damascus,syria"
                                  ,
                                  height: 12.w,
                                  colorContainer:
                                      AppColors.greyfield.withAlpha(20),
                                ),
                                SizedBox(
                                  height: 23,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 6.w,
                          left: 6.w,
                          right: 6.w,
                        ),
                        child: DeleteButton(
                            title: "Delete My Account",
                            icon: Icons.delete_outline_outlined,
                            onTap: () {},
                            fontSizeText: 12.5,
                            fontWeightText: FontWeight.w500),
                      ),
                    ],
                  ),
                ])),
        bottomNavigationBar: Container(
          height: 15.w,
          decoration: BoxDecoration(
            //  color: Colors.yellowAccent,//.withAlpha(1500),
            gradient: LinearGradient(colors: [
              Colors.cyan.shade900,
              Colors.cyan.shade800,
              Colors.cyan.shade800,
              Colors.cyan.shade600,
              AppColors.cyan.withOpacity(0.8),
              AppColors.cyan.withOpacity(0.3),
              AppColors.white.withAlpha(4)
            ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          ),
          child: BottomNavigationBar(
            //useLegacyColorScheme: false,
            backgroundColor: AppColors.cyan.withOpacity(0.5),
            //green,
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
        ));
  }
}
