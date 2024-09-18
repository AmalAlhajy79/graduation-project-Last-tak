import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:newtes1/core/consts/app_assets.dart';
import 'package:newtes1/core/consts/app_colors.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
import 'package:newtes1/modules/customer/request-a-service-from-customer/presentation/components/send-button.dart';
import 'dart:io';
import '../controller/Customer-SendRequest-Urgent-controller.dart';
import 'dialog-note-toSendRequest-toProvider.dart';

class CardService extends StatelessWidget {
  var index = 0;
  int id_prov=0;
  CardService(int index,int id_prov) {
    this.index = index;
    this.id_prov=id_prov;
  }

  final ClassificationController controller =
      Get.put(ClassificationController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white, //AppColors.brown.withAlpha(600),
        //Color(0xD1F8B0EE).withAlpha(600),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 1, left: 0.1, right: 0.1),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                // padding: EdgeInsets.only(bottom: 13.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(9),
                        bottomRight: Radius.circular(9),
                        topRight: Radius.circular(9),
                        topLeft: Radius.circular(9)),
                    color: Colors.white, //Colors.red.shade50,
                    border:
                        Border.symmetric(vertical: BorderSide(width: 0.05))),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 1.w, right: 1.w, bottom: 2.w, top: 1.w),
                      child: Container(
                        //color: Colors.grey.withAlpha(40),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Container(
                              //   height: 20,
                              //   width: 20,
                              //   child: Image.file(
                              //     File(
                              //         "${controller.data[index].profileImage}"),
                              //     fit: BoxFit.cover,
                              //   ),
                              // ),
                              SizedBox(
                                child: CircleAvatar(
                                maxRadius: 14,
                                 backgroundColor: AppColors.orange,

                                  child: //Image.asset("${controller.data[index].profileImage}",fit: BoxFit.cover),

                                  Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 27,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                controller.data[index].name, //"Provider Name",
                                //"User Name",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 12),
                              ),

                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 0.5.w,
                    ),
                    Row(
                      children: [
                        Text('Service name :',
                            //"Service Name",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 10.5,color: AppColors.green)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Text('${controller.data[index].serviceName}',
                            //"Service Name",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 9))
                      ],
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Phone number :',
                            //"Service Name",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 10.5,color: AppColors.green)),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Text('${controller.data[index].phoneNumber}',
                          //"Service Name",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 9)),
                    ],),
                    SizedBox(
                      height: 0.5.w,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: SendButton(
                          title: "Send",
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(9),
                              bottomRight: Radius.circular(9)),
                          onTap: () {
                            showDialogNoteToSendRequestToProvider(context,id_prov);
                          },
                        )),
                      ],
                    ),
                  ],
                ),
                // ListTile(
                // title: Text('Service Name',style: TextStyle(fontWeight: FontWeight.bold),),
                // subtitle: Text('sdsgffffffffffff'),
                //       ),
              ),
            )
          ],
        ),
      ),
// Stack(
// //  alignment: Alignment.topCenter,
//   children: [
//    Expanded(
//        child: Image.network(
//            "https://th.bing.com/th/id/OIP.FZjYTqwgEaJWUbVVPHcckwHaE8?rs=1&pid=ImgDetMain",
//          fit: BoxFit.cover,
//        ))
//         //Image.asset("${AppSVGs.logo}")
//   ,
//   //  SizedBox(height: 1,),
//     // Container(
//     //   color: Colors.red,
//     //   child: Column(
//     //     children: [
//     //       Text("Service Name"),
//     //       SizedBox(height: 1.w,),
//     //       Text("nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn"),
//     //     ],
//     //   ),
//     // )
//   ],
// ),
    );
  }
}
