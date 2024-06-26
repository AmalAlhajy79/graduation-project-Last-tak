import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtes1/core/consts/app_assets.dart';
import 'package:newtes1/core/consts/app_colors.dart';
import 'package:newtes1/core/core_components/app_scaffold.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
import '../../../../../core/core_components/button-Req-Serv.dart';
import '../../../../../core/core_components/delete-button.dart';
import '../../../../provider/profile-provider/presentation/components/field-container-profile.dart';

class CustomerRequesrService extends StatelessWidget {
  CustomerRequesrService({Key? key}) : super(key: key);

  String userName = '';
  TimeOfDay selectedTime = TimeOfDay.now();

  void _selectTime(BuildContext context) async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (newTime != null) {
      // No need to call setState in a StatelessWidget
      selectedTime = newTime;
    }
  }

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
        body: ListView(
            padding: EdgeInsets.only(
              left: 1.w,
              right: 1.w,
            ),
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.w, right: 1.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 9.9.w,
                          width: 64.w,
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
                                    fontSize: 12,
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
                        SizedBox(
                          width: 1.w,
                        ),
                        SizedBox(
                          width: 25.w,
                          child: ButtonReqServic(
                            title: "Heed the call",
                            colorContainer: AppColors.green.withAlpha(1500),
                            colorTextStyle: AppColors.white,
                            fontSizeText: 11.6,
                            fontWeightText: FontWeight.w500,
                            heightContainer: 9.5.w,
                            borderRadius: BorderRadius.circular(8),
                            // weightContainer: 20.w,
                            gradient: LinearGradient(colors: [
                              //   AppColors.green.withAlpha(1500),
                              AppColors.green.withOpacity(0.6),
                              AppColors.green.withAlpha(1500),
                              AppColors.cyan.withAlpha(680),
                              // AppColors.cyan.withAlpha(620)
                            ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.w,
                      right: 4.w,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_sharp, color: AppColors.green),
                        Text(
                          " Request a service",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 2.w, left: 2.w, bottom: 4.w, top: 4.w),
                    child: Container(
                      //  padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          //  border: Border.all(color: Colors.grey.withAlpha(50)),
                          borderRadius: BorderRadius.circular(5)),

                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 6.0, bottom: 12.0, left: 14.0, right: 14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 1.w, right: 1.w),
                              child: TextField(
                                decoration: InputDecoration(
                                //  border: InputBorder.none,
                                  hintText: 'Enter your address',
                                  hintStyle: TextStyle(
                                      color: Colors.black87.withOpacity(0.5),
                                      fontSize: 13.5,
                                      fontWeight: FontWeight.w500),
                                  filled: true,
                                  fillColor: AppColors.greyfield.withAlpha(27),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(2.5.w),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: Colors.blue),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16.0, vertical: 12.0),
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                   // border: InputBorder.none,
                                    hintText: 'Chose time',
                                    hintStyle: TextStyle(
                                        color: Colors.black87.withOpacity(0.5),
                                        fontSize: 13.5,
                                        fontWeight: FontWeight.w500),
                                    filled: true,
                                    fillColor: AppColors.greyfield.withAlpha(27),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(2.5.w),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16.0, vertical: 12.0),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        Icons.date_range_outlined,
                                        color: Colors.black87,
                                      ),
                                      onPressed: () {},
                                    )),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Center(
                                child: Text(
                              "Or",
                              style: TextStyle(
                                  color: Colors.black87.withOpacity(0.8),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )),
                            Padding(
                              padding: EdgeInsets.only(right: 5.1.w, left: 3.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 5.3.w,
                                    width: 6.3.w,
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey.withAlpha(100),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: AppColors.white,
                                      size: 21,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    "Current time",
                                    style: TextStyle(
                                        color: Colors.black87.withOpacity(0.8),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.w,
                      left: 6.w,
                      right: 6.w,
                    ),
                    child: DeleteButton(
                      title: "Confirm",
                      fontSizeText: 16,
                      colorContainer: AppColors.orange,
                      heightContainer: 11.5.w,
                    ),
                  ),
                ],
              ),
            ]),
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
        )
        // Container(
        //   height: 15.w,
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       colors: [AppColors.green,AppColors.cyan],
        //         begin: Alignment.bottomLeft,
        //       end: Alignment.topRight
        //
        //     )
        //   ),
        //   child: BottomNavigationBar(
        //     backgroundColor:AppColors.green ,//Colors.cyan.shade700 ,
        //     items: <BottomNavigationBarItem>[
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.home,color: Colors.white,size: 26,),
        //         label: '',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.menu_sharp,color: Colors.white,size: 26),
        //         label: '',
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Icon(Icons.person,color: Colors.white,size: 26),
        //         label: '',
        //       ),
        //     ],
        //     currentIndex: _selectedIndex,
        //     selectedItemColor: AppColors.green,
        //    // unselectedItemColor:AppColors.white ,
        //     onTap: (value) => print("AA..........AA"),
        //   ),
        // ),
        );
  }
}
