import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtes1/core/core_components/app_scaffold.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
import '../../../../../../core/consts/app_colors.dart';
import '../../../../../../core/core_components/button-Req-Serv.dart';

class NotificationCustomer extends StatelessWidget {
  const NotificationCustomer({Key? key}) : super(key: key);

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
                      fontSizeText: 9.8,
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
              height: 13,
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
                    " Notification",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.5),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3.w,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.9.w, right: 4.7.w),
              child: Container(
                //color: Colors.red,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12.withOpacity(0.09)),
                  borderRadius: BorderRadius.circular(7)
                ),
                height: 115.w,
                width: 95.w,
                child: ListView.separated(
                  separatorBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(right: 3.6.w, left: 2.5.w),
                    child: Divider(color: AppColors.green),
                  ),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Stack(
                          children: [

                         //  SizedBox(width:0.1,),
                            Padding(
                              padding: EdgeInsets.only(left: 7.4.w,top: 2.w),
                              child: Container(
                              //  color:Colors.green,
                                child: ListTile(
                                  title: Text('Termination of service',),
                                  titleTextStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87.withOpacity(0.7)),
                                  subtitle: Text(
                                      'nice nice nice nice nice nice nice nice nice nice nice d nice nice nice nice  nice nice nice. '),
                                  subtitleTextStyle: TextStyle(
                                      height: 1.3,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      color: Colors.black87.withOpacity(0.6)),
                                ),
                              ),
                            ),
                            SizedBox(height:0.1,),
                            Padding(
                              padding:  EdgeInsets.only(bottom: 8.5.w,left: 0.1.w),
                              child: Container(
                              //  color:Colors.red,
                                child: IconButton(
                                    icon: Icon(
                                      Icons.notifications_none,
                                      color: AppColors.green.withOpacity(0.8),size: 21,
                                    ),
                                    onPressed: () {}
                                ),
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   height: 0.7.w,
                        // ),
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
