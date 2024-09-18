import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newtes1/core/core_components/app_scaffold.dart';
import 'package:newtes1/core/core_components/delete-button.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
import 'package:newtes1/modules/customer/viewMyServices/presentation/components/canselButton.dart';
import '../../../../../../core/consts/app_colors.dart';
import '../../../../../../core/core_components/button-Req-Serv.dart';
import 'package:get/get.dart';

import '../components/dialog-for-cancel-reservasion.dart';
import '../controller/show-my-services/show-my-services-controller.dart';
import '../controller/show-my-services/show-my-services-pinding.dart';
//import 'package:sizer/sizer.dart';

class ViewMyServices extends StatelessWidget {
  final ServiceController controller = Get.put(ServiceController());
  static const name = '/viewMyServices';
  static final page = GetPage(
      name: name,
      page: () => ViewMyServices(),
      binding: ShowMyServicesUserBinding());

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
              padding: EdgeInsets.only(left: 1.w, right: 1.w, top: 1.9.w),
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
                              fontSize: 12.8,
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
                      fontSizeText: 11.5,
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
              height: 7.w,
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
                    " My Service",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 1.5.w,
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
                              heightContainer: 9.5.w,
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
                              onTap: () {
                                controller.setServiceStatus('pending');
                              },
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
                            heightContainer: 9.5.w,
                            weightContainer: 50.w,
                            onTap: () {
                              controller.setServiceStatus('confirmed');
                            },
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
                              heightContainer: 9.5.w,
                              weightContainer: 50.w,
                              onTap: () {
                                controller.setServiceStatus('approved');
                              },
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
              height: 4.w,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.9.w, right: 5.9.w),
              child: Container(
                height: 104.6.w,
                width: 95.w,
                decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.grey,)
                    ),
                child: Obx(() {
                  var services = [];
                  if (controller.serviceStatus.value == 'pending') {
                    //List<PendingServices> services = [];
                    services = controller.pendingServices;

                  } else if (controller.serviceStatus.value == 'approved') {
                    // List<ApprovedServices> services = [];
                    services = controller.approvedServices;
                  } else if (controller.serviceStatus.value == 'confirmed') {
                    //  List<ConfirmedServices> services = [];
                    services = controller.confirmedServices;
                  }

                  if (services.isEmpty) {
                    return Center(
                        child: Text(
                      "No services available",
                      style: TextStyle(color: AppColors.orange,fontSize: 16,fontWeight: FontWeight.w500),
                    ));
                  }
                  return
                    ListView.builder(
                    scrollDirection: Axis.vertical,

                    padding: EdgeInsets.only(top: 12),
                    itemCount: services.length,
                    itemBuilder: (context, index) {
                      var service = services[index];
                      print(".....................");
                      print(service.date);
                      print(service.id);
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.8.w),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              border: Border.all(
                                color: Colors.grey.shade200,
                              )),
                          child: Row(
                            children: [
                              Container(
                                height: 35.5.w,
                                width: 28.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white70,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(11),
                                      bottomLeft: Radius.circular(11)),
                                  child: Image.network(
                                   // 'https://th.bing.com/th/id/OIP.FZjYTqwgEaJWUbVVPHcckwHaE8?rs=1&pid=ImgDetMain',
                                   'https://th.bing.com/th/id/R.4a4c4b08afbd35cfb25b80022f0552f1?rik=U7fEYx1UqMQbwg&riu=http%3a%2f%2fstatic1.squarespace.com%2fstatic%2f591e0a68414fb5f9f524b604%2f592f082617bffc1a635596ec%2f594d5a851b10e31b57c737aa%2f1542741752981%2fService%2bis%2bService%2bis%2bService%2bpic.jpg%3fformat%3d1500w&ehk=YyuzppgCpkASrI1Cq3Y345luuwkDGiDBfXvzwhvWzW0%3d&risl=&pid=ImgRaw&r=0',
                                 //  'https://img.freepik.com/premium-photo/male-hand-touching-service-concept_220873-7591.jpg',
                                    // width: 100.w,
                                    fit: BoxFit.fill,
                                    //  height: 150,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Expanded(
                                child: Container(
                                  height: 35.5.w,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(12),
                                        topRight: Radius.circular(12)),
                                    //  color: Colors.blue,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 1.w,
                                      ),
                                      Container(
                                        height: 5.w,
                                        // color: Colors.orange,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              service.serviceName,
                                           // service.date , // "Service Name",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.black87
                                                      .withOpacity(0.7)),
                                            ),
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Container(
                                              //   color: Colors.black,
                                              //  width: 15.w,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons.star,
                                                        color: AppColors.orange,
                                                        size: 14,
                                                      )),
                                                  // Text("4.8", style: TextStyle(
                                                  //     color: AppColors.orange,
                                                  //     fontSize: 10),
                                                  // ),
                                                  SizedBox(
                                                    width: 1.w,
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 1.w),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Service Provider: ",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.black
                                                      .withOpacity(0.7)),
                                            ),
                                            SizedBox(
                                              child: CircleAvatar(
                                                maxRadius: 2.w,
                                                backgroundColor:
                                                    Colors.grey.shade500,
                                                child: Icon(
                                                  Icons.person,
                                                  color: Colors.white,
                                                  size: 3.w,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 0.4.w,
                                            ),
                                            Text(
                                              service.serviceProviderName,// "User Name",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 9,
                                                  color: Colors.black87
                                                      .withOpacity(0.5)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.w,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Address: ",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.black
                                                    .withOpacity(0.8)),
                                          ),
                                          Text(
                                            service.address,//"Damascus,Syria",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.black87
                                                    .withOpacity(0.4)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 1.w,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Phone: ",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.black
                                                    .withOpacity(0.8)),
                                          ),
                                          Text(
                                            service.serviceProviderNumber,//"0987654321",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.black87
                                                    .withOpacity(0.4)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 1.w,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Date: ",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.black
                                                    .withOpacity(0.8)),
                                          ),
                                          Text(
                                            service.date, //"12/12/2023",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12,
                                                color: Colors.black87
                                                    .withOpacity(0.4)),
                                          ),
                                        ],
                                      ),
                                      ////////
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                              width: 22.w,
                                              child: canselButton(
                                                title: "Cansel",
                                                heightContainer: 6.7.w,
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        Radius.circular(12)),
                                                onTap: () {
                                                  print("....service id");
                                                 print(service.id);
                                                  showCancelDialog(
                                                      context, service.id);
                                                },
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }),
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
