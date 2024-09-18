import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:newtes1/core/consts/app_assets.dart';
import 'package:newtes1/core/consts/app_colors.dart';
import 'package:newtes1/core/core_components/app_scaffold.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
import '../../../../../core/core_components/button-Req-Serv.dart';
import '../../../../../core/core_components/delete-button.dart';
import '../../data/models/Classification-model.dart';
import '../../data/models/ServiceTypes-model.dart';
import '../components/card-service.dart';
import '../components/dialog-note-toSendRequest-to-ALL-Provider.dart';
import '../../data/models/service-model.dart';
import '../components/sendButton-ToAll-Providers.dart';
import '../controller/Customer-SendRequest-Urgent-controller.dart';
import '../controller/Customer-SendRequest-Urgent-pinding.dart';
import 'dart:io';

class CustomerSendRequestUrgent extends StatelessWidget {
  CustomerSendRequestUrgent({Key? key}) : super(key: key);

  static const name = '/customerSendRequestUrgent';
  static final page = GetPage(
      name: name,
      page: () => CustomerSendRequestUrgent(),
      binding: CustomerSendRequestUrgentControllerBinding()
  );

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
  final ClassificationController controller = Get.put(ClassificationController());
  final ServiceController controllerService = Get.put(ServiceController());

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

                  SizedBox(
                    height: 15,
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
                          " Urgent Request",
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
                              child:
                              Container(
                                width: 90.w,
                                  height: 12.w,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(width: 0.5)
                                ),
                                  child: Padding(
                                    padding:  EdgeInsets.only(left:1.w ),
                                    child: ClassificationDropdown(),
                                  )
                              ),
                              // TextField(
                              //   decoration: InputDecoration(
                              //   //  border: InputBorder.none,
                              //     hintText: 'Chose Section',
                              //     suffixIcon: IconButton(
                              //       icon: Icon(
                              //         Icons.arrow_drop_down,
                              //         color: AppColors.green,
                              //       ),
                              //       onPressed: () {},
                              //     ),
                              //     hintStyle: TextStyle(
                              //         color: Colors.black87.withOpacity(0.5),
                              //         fontSize: 13.5,
                              //         fontWeight: FontWeight.w500),
                              //     filled: true,
                              //     fillColor: AppColors.greyfield.withAlpha(27),
                              //     border: OutlineInputBorder(
                              //       borderSide: BorderSide.none,
                              //       borderRadius: BorderRadius.circular(2.5.w),
                              //     ),
                              //     focusedBorder: OutlineInputBorder(
                              //       borderRadius: BorderRadius.circular(10.0),
                              //       borderSide: BorderSide(color: Colors.blue),
                              //     ),
                              //     contentPadding: EdgeInsets.symmetric(
                              //         horizontal: 16.0, vertical: 12.0),
                              //   ),
                              //   style: TextStyle(
                              //     color: Colors.black,
                              //     fontSize: 16.0,
                              //   ),
                              // ),
                            ),
                            SizedBox(
                              height: 1.w,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 93.w,
                                  height: 12.w,
                                  decoration: BoxDecoration(

                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      border: Border.all(width: 0.5)
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.only(left:1.w ),
                                    child: ServiceTypeDropdown(),
                                  )
                              ),

                              // TextField(
                              //   decoration: InputDecoration(
                              //      // border: InputBorder.none,
                              //       hintText: 'Chose SubSection',
                              //       hintStyle: TextStyle(
                              //           color: Colors.black87.withOpacity(0.5),
                              //           fontSize: 13.5,
                              //           fontWeight: FontWeight.w500),
                              //       filled: true,
                              //       fillColor: AppColors.greyfield.withAlpha(27),
                              //       border: OutlineInputBorder(
                              //         borderSide: BorderSide.none,
                              //         borderRadius: BorderRadius.circular(2.5.w),
                              //       ),
                              //       focusedBorder: OutlineInputBorder(
                              //         borderRadius: BorderRadius.circular(10.0),
                              //         borderSide:
                              //             BorderSide(color: Colors.blue),
                              //       ),
                              //       contentPadding: EdgeInsets.symmetric(
                              //           horizontal: 16.0, vertical: 12.0),
                              //       suffixIcon: IconButton(
                              //         icon: Icon(
                              //           Icons.arrow_drop_down,
                              //           color: AppColors.green,
                              //         ),
                              //         onPressed: () {},
                              //       ),
                              //   ),
                              //   style: TextStyle(
                              //     color: Colors.black,
                              //     fontSize: 16.0,
                              //   ),
                              // ),
                            ),
                            SizedBox(
                              height: 1.w,
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 1.w),
                              child: Container(
                                  width: 86.w,
                                  height: 12.w,
                                  decoration: BoxDecoration(

                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                      border: Border.all(width: 0.5)
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.only(left:1.w ),
                                    child:  Obx(() {
                                      if (controllerService.services.isEmpty) {
                                        return Row(
                                          children: [
                                            Text("Select Classification and Service Type first"),
                                          ],
                                        );//CircularProgressIndicator();
                                      }
                                      return DropdownButton<Service>(
                                        value: controllerService.selectedService.value,
                                        hint: Text('select service'),
                                        items: controllerService.services.map((Service service) {
                                          return DropdownMenuItem<Service>(
                                            value: service,
                                            child: Text(service.name),
                                          );
                                        }).toList(),
                                        onChanged: (Service? newValue) {
                                          controllerService.setSelectedService(newValue);
                                        },
                                      );
                                    }),
                                  )
                              ),
                            ),
                            SizedBox(
                              height: 6.w,
                            ),

                            Padding(
                              padding: EdgeInsets.only(right: 5.w, left:4.4.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [

                                  Text(
                                    "Available people",
                                    style: TextStyle(
                                        color: AppColors.green,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SendButtonToAllProviders(
                                        title: "  Send to all providers  ",
                                        fontSizeText: 12,
                                        fontWeightText: FontWeight.w500,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                          topLeft:  Radius.circular(5),
                                          topRight:  Radius.circular(5),
                                        ),
                                        onTap: () {
                                          showDialogNoteToSendRequestTo_ALLProvider(context);
                                        },
                                        heightContainer: 9.w,
                                        colorContainer: AppColors.orange.withAlpha(240),

                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          //  SizedBox(height: 0.1.w,),

                            SizedBox(height: 6.w,),
                            Padding(
                              padding: EdgeInsets.only(right: 3.w,left: 3.w),
                              child:
                                  controller.data!=null?
                              Obx(() =>
                              Container(
                                height: 104.6.w,
                                width: 95.w,
                                child: GridView.builder(
                                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                                    childAspectRatio: 1.0,
                                    mainAxisSpacing: 14,
                                    crossAxisSpacing: 14,
                                    maxCrossAxisExtent: 100.w/2,
                                  ),
                                  itemCount:controller.data.length,
                                  itemBuilder: (context,index){

                                    controller.id_available_provider.value=index ;

                                    return  CardService(index,controller.data[index].id);
                                    //   Container(
                                    //
                                    //   child:  Container(
                                    //     height: 50,
                                    //     width: 50,
                                    //     child:Image.file(File('http://192.168.43.31:8001${controller.data[index].profileImage}'))
                                    //     // Image.network(
                                    //     //   'http://192.168.43.31:8001${controller.data[index].profileImage}', // تأكد من استخدام الرابط الصحيح
                                    //     //   fit: BoxFit.cover,
                                    //     // ),
                                    //   ),
                                    //   // Image.file(
                                    //   //   File(
                                    //   //       "${controller.data[index].profileImage}"),
                                    //   //   fit: BoxFit.cover,
                                    //   // ),
                                    // );
                                    //

                                  },

                                ),
                              ),
                              ):CircularProgressIndicator()
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.w,
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

        );
  }
}
class ClassificationDropdown extends StatelessWidget {
  final ClassificationController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.classifications.isEmpty) {
        return Row(
          children: [
            Text('Selecte Classification'),
          ],
        );//CircularProgressIndicator();
      }
      return DropdownButton<Classification>(
        value: controller.selectedClassification.value,
        hint: Text('Selecte Classification'),
        items: controller.classifications.map((Classification classification) {
          return DropdownMenuItem<Classification>(
            value: classification,
            child: Text(classification.category),
          );
        }).toList(),
        onChanged: (Classification? newValue) {
          controller.setSelectedClassification(newValue);
          print("........classifications-id");
          print(newValue?.id);
        },
      );
    });
  }
}

class ServiceTypeDropdown extends StatelessWidget {
  final ClassificationController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.selectedClassification.value == null) {
        return Row(
          children: [
            Text('Select Classification first'),
          ],
        );
      }
      if (controller.serviceTypes.isEmpty) {
        return Text("Select Classification first");//CircularProgressIndicator();
      }
      return DropdownButton<ServiceType>(
        value: controller.selectedServiceType.value,
        hint: Text('selecte Section '),
        items: controller.serviceTypes.map((ServiceType serviceType) {
          return DropdownMenuItem<ServiceType>(
            value: serviceType,
            child: Text(serviceType.name),
          );
        }).toList(),
        onChanged: (ServiceType? newValue) {
          controller.setSelectedServiceType(newValue);
          print("........type-id");
          print(newValue?.id);
        },
      );
    });
  }
}