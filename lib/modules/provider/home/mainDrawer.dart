import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newtes1/core/consts/app_colors.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
import '../../bank/provider-bank/provider-deposit/presentation/screens/deposit-money-Provider-screen.dart';
import '../../bank/provider-bank/store-account-provider/presentation/screens/store-account-bnak-Provider-screen.dart';
import '../../bank/provider-bank/subscription-payment-provider/presentation/screens/subscription-payment-Provider-screen.dart';
import '../provider-urgent-request-from-customer/view-All-urgent-request-provider(conf-prend-approve)/presentation/screens/provider-All-request-from-customer_screen.dart';

class MainDrawer extends StatelessWidget {
  final List<String> options = ['Bank account', 'deposit money'];
  String selectedOption = 'bank';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.green,
            ),
            child: Text(
              'My Drawer',
              style: TextStyle(color: Colors.white, fontSize: 22.5),
            ),
          ),
          SizedBox(
            height: 3.5.w,
          ),
          ListTile(
            title: Container(
                height: 10.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ' Urgent Request',
                          style: TextStyle(color: AppColors.green),
                        ),
                      ],
                    ),
                  ],
                ),
                // decoration: BoxDecoration(
                //     border: Border.all(color: AppColors.green, width: 0.1),
                //    // borderRadius: BorderRadius.all(Radius.circular(5))
                //        )
                    ),
            onTap: () {
              Get.toNamed(ProviderAllUrgentRequestFromCustomerScreen.name);
            },
          ),
          Divider(
            color: AppColors.greyfield,
            height: 3.w,
            thickness: 0.5,
          ),
          ListTile(
            title: Container(
                height: 30.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(

                          children: [
                            Text(
                              ' Your Bank:',
                              style: TextStyle(color: AppColors.green),
                            ),
                       SizedBox(width: 3.w,),
                            Column(
                              children: [

                                ElevatedButton(
                                  onPressed: () {
                                    Get.toNamed(StoreAccountProviderScreen.name);
                                  },
                                  child: Text(
                                    'create account',
                                    style: TextStyle(
                                        color: AppColors.orange),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Get.toNamed(DepositProviderScreen.name);
                                  },
                                  child: Text(
                                    'Depose Money',
                                    style: TextStyle(
                                        color: AppColors.orange),
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                // decoration: BoxDecoration(
                //     border: Border.all(color: AppColors.green, width: 0.5),
                //     borderRadius: BorderRadius.all(Radius.circular(5)))
    ),
            onTap: () {
              // Handle item 1 tap
            },
          ),
          Divider(
            color: AppColors.greyfield,
            height: 3.w,
            thickness: 0.5,
          ),
          ListTile(
            title: Container(
                height: 10.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ' subscription in app',
                          style: TextStyle(color: AppColors.green),
                        ),
                      ],
                    ),
                  ],
                ),
                // decoration: BoxDecoration(
                //     border: Border.all(color: AppColors.green, width: 0.5),
                //     borderRadius: BorderRadius.all(Radius.circular(5)))
            ),
            onTap: () {
              Get.toNamed(SubscriptionPaymentProviderScreen.name);
            },
          ),
          Divider(
            color: AppColors.greyfield,
            height: 3.w,
            thickness: 0.5,
          ),
          ListTile(
            title: Container(
                height: 10.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ' Setting',
                          style: TextStyle(color: AppColors.green),
                        ),
                      ],
                    ),
                  ],
                ),
                // decoration: BoxDecoration(
                //     border: Border.all(color: AppColors.green, width: 0.5),
                //     borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            onTap: () {
              // Handle item 1 tap
            },
          ),
        ],
      ),
    );
  }
}
