import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtes1/core/core_components/app_scaffold.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
import '../../../../../../core/consts/app_colors.dart';
import '../../../services-view-provider(call-Resp)/presentation/components/card-service.dart';
import '../components/card-service-detailes.dart';

class ServicesDetailesAndActiveForProvider extends StatelessWidget {
  const ServicesDetailesAndActiveForProvider({Key? key}) : super(key: key);

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
      body: ListView(
          children: [
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
                    " Service Name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(height: 3.w,),
            Padding(
              padding: EdgeInsets.only(right: 5.1.w,left: 5.1.w),
              child: Container(
                height: 90.w,
                width: 95.w,
                child: CardServiceDetailes(),
              ),
            ),
            SizedBox(height: 4.5.w,),
            Padding(
                padding: EdgeInsets.only(right: 5.1.w,left: 5.1.w),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 5.3.w,
                  width: 6.3.w,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.withAlpha(100),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Icon(Icons.check,color: AppColors.white,),
                ),
                SizedBox(width: 3.w,),
                Text("Activate call response",
                  style: TextStyle(
                  color: Colors.blueGrey.withOpacity(1),
                    fontSize: 13,
                    fontWeight: FontWeight.w600
                ),),
              ],
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
