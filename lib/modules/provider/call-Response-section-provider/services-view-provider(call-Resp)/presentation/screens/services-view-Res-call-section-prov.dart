import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtes1/core/core_components/app_scaffold.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
import '../../../../../../core/consts/app_colors.dart';
import '../../../../../../core/core_components/button-Req-Serv.dart';
import '../components/card-service.dart';

class ProviderServicesViewCallSec extends StatelessWidget {
  const ProviderServicesViewCallSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0;
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
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.w, right: 5.w),
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
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.black45),
                      prefixIcon:  Icon(
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
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 4.w,
                right: 4.w,
              ),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_sharp, color: Colors.cyan),
                  Text(
                    " Urgent service request",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w, right: 12.w,),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 25.w,
                          child: ButtonReqServic(
                              title: "Requests",
                              colorContainer: AppColors.cyan.withAlpha(620),
                            colorTextStyle: AppColors.greyfield.withAlpha(1700),
                            fontSizeText: 14,
                            fontWeightText: FontWeight.w500,
                            heightContainer: 11.w,
                            weightContainer: 50.w,
                            onTap:(){} ,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: 25.w-2,
                          child: ButtonReqServic(
                            title: "Services",
                           colorContainer: AppColors.green.withAlpha(1500),
                            colorTextStyle: AppColors.white,
                            fontSizeText: 14,
                            fontWeightText: FontWeight.w500,
                            heightContainer: 11.w,
                            //weightContainer: 20.w,
                            gradient: LinearGradient(
                                colors: [
                               //   AppColors.green.withAlpha(1500),
                                  AppColors.green,
                                  AppColors.green.withAlpha(1500),
                                  AppColors.cyan.withAlpha(680),
                                 // AppColors.cyan.withAlpha(620)
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight
                            ),
                            onTap:(){} ,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 3.w,),
            Padding(
              padding: EdgeInsets.only(right: 5.1.w,left: 5.1.w),
              child: Container(
                height: 104.6.w,
                width: 95.w,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    childAspectRatio: 0.8,
                    mainAxisSpacing: 13,
                    crossAxisSpacing: 13,
                    maxCrossAxisExtent: 100.w/2,
                  ),
                  itemCount:6,
                  itemBuilder: (context,index){
                    return CardService();
                    //   Container(
                    //   height: 10,
                    //   width: 14,
                    //   decoration: BoxDecoration(
                    //       color: Colors.grey.withAlpha(5000),
                    //       borderRadius: BorderRadius.circular(10)
                    //   ),
                    //
                    // );
                  },

                ),
              ),
            ),
          ],
        ),
      ]),
      bottomNavigationBar: Container(
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
      ),
    );
  }
}
