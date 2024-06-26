import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:newtes1/core/consts/app_assets.dart';
import 'package:newtes1/core/consts/app_colors.dart';
import 'package:newtes1/core/core_components/app_scaffold.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
import 'package:newtes1/core/core_components/delete-button.dart';
import 'package:newtes1/modules/customer/profile-any-Provider-from-service-details/presentation/controller/sho-prof-provider-by-user-controller.dart';
import 'package:newtes1/modules/customer/profile-any-Provider-from-service-details/presentation/controller/show-Profile-provider-by-Custom-binding.dart';
import '../../../../../core/core_components/button-Req-Serv.dart';
import '../components/field-container-profile.dart';

class AnyProviderProfileFromServiceDetails extends GetView<ShowProfileProviderByCustomController>  {
  const AnyProviderProfileFromServiceDetails({Key? key}) : super(key: key);
  static const name = '/showAnyProviderProfileFromServiceDetails';
  static final page = GetPage(
      name: name,
      page: () => const AnyProviderProfileFromServiceDetails(),
      binding: ShowProfileProviderByCustomBinding()
  );
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
              color:AppColors.green, fontSize: 15, fontWeight: FontWeight.bold),
        )),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        ],
      ),
      body: ListView(
          padding: EdgeInsets.only(
            top: 1.w,
            left: 1.w,
            right: 1.w,
          ),
          children: [
            Obx(() =>
                Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: 1.w,right: 1.w,top: 0.7.w),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    SizedBox(height: 5.w,),
                      Container(
                        height: 9.4.w,
                        width: 70.1.w,
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
                                  fontSize: 13,
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
                      SizedBox(width: 1.w,),
                      SizedBox(
                        width: 21.w,
                        child: ButtonReqServic(
                          title: "Heed the call",
                          colorContainer: AppColors
                              .green
                              .withAlpha(1500),
                          colorTextStyle:
                          AppColors.white,
                          fontSizeText: 9.8,
                          fontWeightText:
                          FontWeight.w500,
                          heightContainer: 8.2.w,
                          borderRadius:
                          BorderRadius.circular(
                              8),
                          // weightContainer: 20.w,
                          gradient: LinearGradient(
                              colors: [
                                //   AppColors.green.withAlpha(1500),
                                AppColors.green
                                    .withOpacity(0.6),
                                AppColors.green
                                    .withAlpha(1500),
                                AppColors.cyan
                                    .withAlpha(680),
                                // AppColors.cyan.withAlpha(620)
                              ],
                              begin: Alignment
                                  .bottomLeft,
                              end:
                              Alignment.topRight),
                          onTap: () {

                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 9.w,
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
                        " Service provider",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize:20),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: 5.w, left: 5.w, bottom: 4.w, top: 4.5.w),
                  child:
                  Container(
                    //  padding: EdgeInsets.all(4.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.withAlpha(50)),
                        borderRadius: BorderRadius.circular(5)),

                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, bottom: 12.0, left: 14.0, right: 14.0),
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            //color: Colors.grey.withAlpha(40),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 2.5.w),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      child: CircleAvatar(
                                        maxRadius: 16,
                                        backgroundColor: Colors.grey.shade500,
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "${controller.profile.value.name}",//  "User Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                    SizedBox(
                                      width: 40.w / 1.4, //////////////
                                    ),
                                    Container(
                                      //color: Colors.red,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 2.w),
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.star,
                                                  color: Colors.orange,size:12,
                                                )),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 4.w),
                                            child: Text("4.8",style: TextStyle(fontSize: 10,color: Colors.orange),),
                                          )
                                        ],
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: 3.w,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                " Phone Number : ${controller.profile.value.phoneNumber}" ,//+963-987654321", //"Phone Number : +963-987654321",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  //FontWeight.bold,
                                  fontSize : 12.6,
                                  //12,
                                  color: Colors.black87, //Colors.black87,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 3.w,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                " E-mail : ${controller.profile.value.email}",//serviceprovider@gmaill.com", //"Phone Number : +963-987654321",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  //FontWeight.bold,
                                  fontSize : 12.6,
                                  //12,
                                  color: Colors.black87, //Colors.black87,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.w,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                " Address : ${controller.profile.value.address}",//Damascus,syria", //"Phone Number : +963-987654321",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  //FontWeight.bold,
                                  fontSize : 12.6,
                                  //12,
                                  color: Colors.black87, //Colors.black87,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.w,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                " Number of services provided : 12 services", //"Phone Number : +963-987654321",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  //FontWeight.bold,
                                  fontSize : 12.6,
                                  //12,
                                  color: Colors.black87, //Colors.black87,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 2.w,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 20.w,
                                child: ButtonReqServic(
                                  title: "click to view",
                                  colorContainer: AppColors
                                      .green
                                      .withAlpha(1500),
                                  colorTextStyle:
                                  AppColors.white,
                                  fontSizeText: 9.8,
                                  fontWeightText:
                                  FontWeight.w500,
                                  heightContainer: 7.7.w,
                                  borderRadius:
                                  BorderRadius.circular(
                                      8),
                                  // weightContainer: 20.w,
                                  gradient: LinearGradient(
                                      colors: [
                                        //   AppColors.green.withAlpha(1500),
                                        AppColors.green
                                            .withOpacity(0.6),
                                        AppColors.green
                                            .withAlpha(1500),
                                        AppColors.cyan
                                            .withAlpha(680),
                                        // AppColors.cyan.withAlpha(620)
                                      ],
                                      begin: Alignment
                                          .bottomLeft,
                                      end:
                                      Alignment.topRight),
                                  onTap: () {

                                  },
                                ),
                              ),
                            ],)
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 8.w,top: 2.8.w,bottom: 1.w),
                  child: Row(
                    children: [
                      Text(
                        "Galery",
                        style: TextStyle(
                            color:AppColors.green, fontSize: 13.9, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                      top: 1.5.w,
                      left: 5.w,
                      right: 5.w,
                    ),
                    child:Container(
                      height: 19.w,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context,index){
                          return  Padding(
                              padding:  EdgeInsets.all(1.5.w),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child:ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomRight:  Radius.circular(10),
                                      bottomLeft:  Radius.circular(10),
                                    ),
                                    child:
                                    Image.network("https://th.bing.com/th/id/OIP.FZjYTqwgEaJWUbVVPHcckwHaE8?rs=1&pid=ImgDetMain")),
                              ) );
                        },

                      ),
                    )

                ),
              ],
            ),)
            ,

          ]),
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
      ),
    );
  }
}
