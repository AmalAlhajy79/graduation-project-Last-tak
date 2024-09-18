import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:newtes1/core/core_components/app_scaffold.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
import '../../../../../../core/consts/app_colors.dart';
import '../../../../../../core/core_components/button-Req-Serv.dart';
import '../../../view-All-urgent-request-provider(conf-prend-approve)/presentation/controller/show-All-Urgent_request-controller.dart';
import '../../../view-All-urgent-request-provider(conf-prend-approve)/presentation/screens/provider-All-request-from-customer_screen.dart';
import '../controller/provider-details-request-controller.dart';
import '../controller/provider-details-request-pinding.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProviderDetailsMyRequestFromCustomer extends StatelessWidget {


  static const name = '/providerDetailsMyRequestFromCustomer';
  static final page = GetPage(
      name: name,
      page: () => ProviderDetailsMyRequestFromCustomer(),
      binding: ProviderDetailsRequestBinding());
  final ProviderDetailsRequestController controller =
      Get.put(ProviderDetailsRequestController());

  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0;
var id=Get.arguments as int;
    initializeDateFormatting();

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
                  IconButton(
                      onPressed: () {
                  Get.toNamed(ProviderAllUrgentRequestFromCustomerScreen.name);
                     },
                      icon: Icon(Icons.arrow_back_sharp, color: Colors.cyan)
  ),
                  Text(
                    " Urgent service request",
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
                      height: 1.w,
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
                              onTap: () {
                                controller.setRequestStatus('pending',id);
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
                            heightContainer: 10.2.w,
                            weightContainer: 50.w,
                            onTap: () {
                              controller.setRequestStatus('confirmed',id);
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
                              heightContainer: 10.2.w,
                              weightContainer: 50.w,
                              onTap: () {
                                controller.setRequestStatus('approved',id);
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
              height: 10.w,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.1.w, right: 2.5.w),
              child: Container(
                height: 104.6.w,
                width: 95.w,
                child: Obx(() {
                  var services;
                  if (controller.serviceStatus.value == 'pending') {
                    //List<PendingServices> services = [];
                    services = controller.requestDetailsPending.value;

                    // print("......................");
                    // print(services.serviceName);
                  } else if (controller.serviceStatus.value == 'approved') {
                    // List<ApprovedServices> services = [];
                    services = controller.requestDetailsApproved.value;
                  } else if (controller.serviceStatus.value == 'confirmed') {
                    //  List<ConfirmedServices> services = [];
                    services = controller.requestDetailsConfermed.value;
                  }

                  if (services == null) {
                    return Center(
                        child: Text(
                      "No Request available",
                      style: TextStyle(
                          color: AppColors.orange,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ));
                  }

                  return Column(
                    children: [
                      ListTile(
                        title: Text(services.serviceName), //'Request Title'),
                        titleTextStyle: TextStyle(
                            fontSize: 15.3,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87.withOpacity(0.7)),
                        subtitle: Text(
                          services.note,
                          //'nice nice nice nice nice nice nice nice d nice nice nice nice nice nice d nice nice nice d nice nice nice nice nice nice d nice nice nice nice nice nice d nice nice nice nice nice nice nice nice nice d nice nice nice nice  nice nice nice.
                        ),
                        subtitleTextStyle: TextStyle(
                            height: 1.5,
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: Colors.black87.withOpacity(0.6)),
                      ),
                      SizedBox(
                        height: 7.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.1.w, right: 2.5.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "client information: ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87.withOpacity(0.7)),
                                ),
                                SizedBox(
                                  child: CircleAvatar(
                                    maxRadius: 12,
                                    backgroundColor: Colors.grey.shade500,
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.5.w,
                                ),
                                Text(
                                  services.userName, //"User Name",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 9,
                                      color: Colors.black87.withOpacity(0.6)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Address: ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87.withOpacity(0.7)),
                                ),
                                Text(
                                  services.userAddress, //"Damascus,Syria",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black87.withOpacity(0.5)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Phone: ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87.withOpacity(0.7)),
                                ),
                                Text(
                                  services.userPhone, //"0987654321",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black87.withOpacity(0.5)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Date: ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87.withOpacity(0.7)),
                                ),
                                Text(
                                  services.requestedDate, //"12/12/2023",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black87.withOpacity(0.5)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Time: ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87.withOpacity(0.7)),
                                ),
                                Text(
                                  (() {
                                    try {
                                      // final parsedDate = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parseUtc(services.requestedTime);
                                      final formattedDate =
                                          DateFormat('dd/MM/yyyy').format(
                                              DateTime.parse(
                                                      services.requestedTime)
                                                  .toLocal());
                                      print(formattedDate);
                                      print('rrrrrrr');
                                      return formattedDate;
                                    } catch (e) {
                                      print('Error parsing date: $e');
                                      return 'Invalid Date';
                                    }
                                  })(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black87.withOpacity(0.5)),
                                )

                                // Text(
                                //   DateTime.parse(services.requestedTime).toString(), //"12/12/2023",
                                //   style: TextStyle(
                                //       fontWeight: FontWeight.w500,
                                //       fontSize: 12,
                                //       color: Colors.black87.withOpacity(0.5)),
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 4.w, left: 4.w),
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
                                onTap: () {
                                  controller.cancelReservation(services.id);
                                  Get.toNamed(
                                      ProviderAllUrgentRequestFromCustomerScreen
                                          .name);
                                  // showDialog(
                                  //   context: context,
                                  //   builder: (BuildContext context) {
                                  //     return Theme(
                                  //       data: ThemeData(
                                  //           //  primaryColor: Colors.grey, // لون الـ TextField
                                  //           ),
                                  //       child: Container(
                                  //         color: Colors.blueGrey.withOpacity(0.1),
                                  //         child: AlertDialog(
                                  //           titlePadding: EdgeInsets.only(top: 1.w,left: 5.w,right: 2.w),
                                  //           title: Container(
                                  //             decoration: BoxDecoration(
                                  //                // color: Colors.red,
                                  //               borderRadius: BorderRadius.circular(11)
                                  //             ),
                                  //
                                  //             child: Column(
                                  //               crossAxisAlignment: CrossAxisAlignment.start,
                                  //               mainAxisAlignment: MainAxisAlignment.start,
                                  //               children: [
                                  //                 Row(
                                  //                   mainAxisAlignment: MainAxisAlignment.end,
                                  //                   children: [
                                  //                     IconButton(
                                  //                         onPressed: () {
                                  //                           Navigator.of(context).pop();
                                  //                         },
                                  //                         icon: Icon(Icons.close_rounded,size: 27,weight: 37,color: AppColors.black,)),
                                  //                   ],
                                  //                 ),
                                  //                 SizedBox(height: 0.2.w,),
                                  //                 Text(
                                  //                   'Enter the resion for rejection',
                                  //                   style: TextStyle(
                                  //                       fontSize: 13,
                                  //                       fontWeight: FontWeight.bold,
                                  //                       color: Colors.black),
                                  //                 ),
                                  //
                                  //               ],
                                  //             ),
                                  //           ),
                                  //           content: Container(
                                  //             height: 28.w,
                                  //             decoration: BoxDecoration(
                                  //               color: Colors.black12,
                                  //               borderRadius: BorderRadius.all(
                                  //                 Radius.circular(9.5),
                                  //               ),
                                  //             ),
                                  //             child: TextField(
                                  //               cursorHeight: 20,
                                  //               cursorWidth: 1,
                                  //               decoration: InputDecoration(
                                  //                   hintText: '  Write Here',
                                  //                   hintStyle: TextStyle(
                                  //                       fontSize: 11,
                                  //                       fontWeight:
                                  //                           FontWeight.w500),
                                  //                   border: InputBorder.none),
                                  //
                                  //             ),
                                  //           ),
                                  //           actions: <Widget>[
                                  //             Row(
                                  //               mainAxisAlignment:
                                  //                   MainAxisAlignment.center,
                                  //               children: [
                                  //                 SizedBox(
                                  //                   width: 20.8.w,
                                  //                   child: ButtonReqServic(
                                  //                     title: "Submit",
                                  //                     colorContainer: AppColors
                                  //                         .green
                                  //                         .withAlpha(1500),
                                  //                     colorTextStyle:
                                  //                         AppColors.white,
                                  //                     fontSizeText: 9.4,
                                  //                     fontWeightText:
                                  //                         FontWeight.w500,
                                  //                     heightContainer: 7.w,
                                  //                     borderRadius:
                                  //                         BorderRadius.circular(
                                  //                             8),
                                  //                     // weightContainer: 20.w,
                                  //                     gradient: LinearGradient(
                                  //                         colors: [
                                  //                           //   AppColors.green.withAlpha(1500),
                                  //                           AppColors.green
                                  //                               .withOpacity(0.6),
                                  //                           AppColors.green
                                  //                               .withAlpha(1500),
                                  //                           AppColors.cyan
                                  //                               .withAlpha(680),
                                  //                           // AppColors.cyan.withAlpha(620)
                                  //                         ],
                                  //                         begin: Alignment
                                  //                             .bottomLeft,
                                  //                         end:
                                  //                             Alignment.topRight),
                                  //                     onTap: () {
                                  //                      controller.cancelReservation(services.id, controller.reasionController.text);
                                  //                     print("reasionController.....");
                                  //                     print(controller.reasionController.text);
                                  //
                                  //                      },
                                  //                   ),
                                  //                 ),
                                  //               ],
                                  //             ),
                                  //           ],
                                  //
                                  //         ),
                                  //       ),
                                  //     );
                                  //   },
                                  // );
                                  //  print("LLLLLLLLll");
                                },
                              ),
                            ),
                            //   if (controller.serviceStatus.value == 'approved')
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

                            //  if (controller.serviceStatus.value == 'pending')
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
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Theme(
                                        data: ThemeData(
                                            //  primaryColor: Colors.grey, // لون الـ TextField
                                            ),
                                        child: Container(
                                          color:
                                              Colors.blueGrey.withOpacity(0.1),
                                          child: AlertDialog(
                                            titlePadding: EdgeInsets.only(
                                                top: 1.w,
                                                left: 5.w,
                                                right: 2.w),
                                            title: Container(
                                              decoration: BoxDecoration(
                                                  // color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          11)),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      IconButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          icon: Icon(
                                                            Icons.close_rounded,
                                                            size: 27,
                                                            weight: 37,
                                                            color:
                                                                AppColors.black,
                                                          )),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 0.2.w,
                                                  ),
                                                  Text(
                                                    'The request has been completed',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.black
                                                            .withOpacity(0.6)),
                                                  ),
                                                  SizedBox(
                                                    height: 5.w,
                                                  )
                                                ],
                                              ),
                                            ),
                                            actions: <Widget>[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    width: 20.8.w,
                                                    child: ButtonReqServic(
                                                      title: "Done",
                                                      colorContainer: AppColors
                                                          .green
                                                          .withAlpha(1500),
                                                      colorTextStyle:
                                                          AppColors.white,
                                                      fontSizeText: 9.4,
                                                      fontWeightText:
                                                          FontWeight.w500,
                                                      heightContainer: 7.w,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      // weightContainer: 20.w,
                                                      gradient: LinearGradient(
                                                          colors: [
                                                            //   AppColors.green.withAlpha(1500),
                                                            AppColors.green
                                                                .withOpacity(
                                                                    0.6),
                                                            AppColors.green
                                                                .withAlpha(
                                                                    1500),
                                                            AppColors.cyan
                                                                .withAlpha(680),
                                                            // AppColors.cyan.withAlpha(620)
                                                          ],
                                                          begin: Alignment
                                                              .bottomLeft,
                                                          end: Alignment
                                                              .topRight),
                                                      onTap: () {
                                                        controller
                                                            .approveReservation_InProvider(
                                                                services.id,
                                                                "approved");
                                                        Get.toNamed(
                                                            ProviderAllUrgentRequestFromCustomerScreen
                                                                .name);
                                                      },
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 18.w,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
