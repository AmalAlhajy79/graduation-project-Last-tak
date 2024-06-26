import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtes1/core/core_components/app_scaffold.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
import '../../../../../../core/consts/app_colors.dart';
import '../../../../../../core/core_components/button-Req-Serv.dart';

class ProviderAllMyRequestFromCustomer extends StatelessWidget {
  const ProviderAllMyRequestFromCustomer({Key? key}) : super(key: key);

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
                      prefixIcon: Icon(
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
              height: 2.w,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.4.w,
                right: 5.4.w,
              ),
              child: Container(
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 25.2.w,
                          child: ButtonReqServic(
                            title: "Services",
                            colorContainer: AppColors.cyan.withAlpha(620),
                            colorTextStyle: AppColors.greyfield.withAlpha(1700),
                            fontSizeText: 12.5,
                            fontWeightText: FontWeight.w500,
                            heightContainer: 10.2.w,
                            weightContainer: 50.w,
                            onTap: () {},
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        SizedBox(
                          width: 25.2.w - 2,
                          child: ButtonReqServic(
                            title: "Requests",
                            colorContainer: AppColors.green.withAlpha(1500),
                            colorTextStyle: AppColors.white,
                            fontSizeText: 12.5,
                            fontWeightText: FontWeight.w500,
                            heightContainer: 10.2.w,
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
                                end: Alignment.topRight),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.w,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1.w),
                          child: SizedBox(
                            width: 25.6.w,
                            child: ButtonReqServic(
                              title: "Pending",
                              colorContainer: AppColors.green.withAlpha(1500),
                              colorTextStyle: AppColors.white,
                              fontSizeText: 12.5,
                              fontWeightText: FontWeight.w400,
                              heightContainer: 10.2.w,
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
                                  end: Alignment.topRight),
                              onTap: () {},
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 26.w,
                          child: ButtonReqServic(
                            title: "Confirmed",
                            colorContainer: AppColors.cyan.withAlpha(620),
                            colorTextStyle: AppColors.greyfield.withAlpha(1700),
                            fontSizeText: 12.5,
                            fontWeightText: FontWeight.w500,
                            heightContainer: 10.2.w,
                            weightContainer: 50.w,
                            onTap: () {},
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 1.w),
                          child: SizedBox(
                            width: 25.8.w - 1,
                            child: ButtonReqServic(
                              title: "Approved",
                              colorContainer: AppColors.cyan.withAlpha(620),
                              colorTextStyle:
                                  AppColors.greyfield.withAlpha(1700),
                              fontSizeText: 12.5,
                              fontWeightText: FontWeight.w500,
                              heightContainer: 10.2.w,
                              weightContainer: 50.w,
                              onTap: () {},
                            ),
                          ),
                        ),
                        //////////////
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.w,
            ),
            Padding(
              padding: EdgeInsets.only( left: 5.1.w,right: 2.5.w),
              child: Container(
                height: 104.6.w,
                width: 95.w,
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      Padding(
                          padding: EdgeInsets.only(right: 6.w, left: 6.w,top: 0.5.w),
                          child:Divider() ,
                      ),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text('Request Title'),
                          titleTextStyle: TextStyle(
                              fontSize: 15.3,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87.withOpacity(0.7)),
                          subtitle: Text(
                              'nice nice nice nice nice d nice nice nice nice nice nice nice nice nice d nice nice nice nice  nice nice nice. '),
                          subtitleTextStyle: TextStyle(
                              height: 1.5,
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: Colors.black87.withOpacity(0.6)),
                        ),
                        SizedBox(
                          height: 0.7.w,
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right:4.w,left: 4.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 25.w,
                                child: ButtonReqServic(
                                  title: "Delete",
                                  colorContainer: AppColors.red,
                                  colorTextStyle: AppColors.white,
                                  fontSizeText: 9.4,
                                  fontWeightText: FontWeight.w400,
                                  heightContainer: 6.8.w,
                                  borderRadius: BorderRadius.circular(8),
                                  // weightContainer: 20.w,
                                  onTap: () {},
                                ),
                              ),
                              SizedBox(
                                width: 27.8.w,
                                child: ButtonReqServic(
                                  title: "Approve By QR",
                                  colorContainer: AppColors.green.withAlpha(1500),
                                  colorTextStyle: AppColors.white,
                                  fontSizeText: 9.4,
                                  fontWeightText: FontWeight.w400,
                                  heightContainer: 6.8.w,
                                  borderRadius: BorderRadius.circular(8),
                                  // weightContainer: 20.w,
                                  gradient: LinearGradient(
                                      colors: [
                                        //   AppColors.green.withAlpha(1500),
                                        AppColors.green.withOpacity(0.6),
                                        AppColors.green.withAlpha(1500),
                                        AppColors.cyan.withAlpha(680),
                                        // AppColors.cyan.withAlpha(620)
                                      ],
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight),
                                  onTap: () {},
                                ),
                              ),
                              SizedBox(
                                width: 26.w - 1,
                                child: ButtonReqServic(
                                  title: "Approve",
                                  colorContainer: AppColors.green.withAlpha(1500),
                                  colorTextStyle: AppColors.white,
                                  fontSizeText: 9.4,
                                  fontWeightText: FontWeight.w400,
                                  heightContainer: 6.8.w,
                                  borderRadius: BorderRadius.circular(8),
                                  // weightContainer: 20.w,
                                  gradient: LinearGradient(
                                      colors: [
                                        //   AppColors.green.withAlpha(1500),
                                        AppColors.green,
                                        AppColors.green.withAlpha(1500),
                                        AppColors.cyan.withAlpha(680),
                                        // AppColors.cyan.withAlpha(620)
                                      ],
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight),
                                  onTap: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
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
      ),
    );
  }
}
