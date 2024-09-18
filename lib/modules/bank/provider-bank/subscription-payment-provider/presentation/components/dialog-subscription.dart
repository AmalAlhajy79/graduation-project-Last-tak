// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../../../../../provider/home/mainScreen.dart';
// import '../controller/subscription-payment-provider-bank-account/subscription-payment-Provider-controller.dart';
//
// void showConfirmSubscriptionDialog(BuildContext context){//,String email,String password) {
//   SubscriptionPaymentProviderController controller = Get.find();
//
//   Get.dialog(
//     AlertDialog(
//      // title: Text('Cancel Reservation'),
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Center(
//             child: Text(
//               'Sure you want to subscribe?',
//               style: TextStyle(color: Colors.grey),
//             ),
//           ),
//           SizedBox(height: 10),
//
//         ],
//       ),
//       actions: [
//         TextButton(
//           onPressed: () {
//             Get.back();
//           },
//           child: Text('Cancel'),
//         ),
//         TextButton(
//           onPressed: () async{
//         await  controller.subscriptionPaymentProviderBank();
//           Get.toNamed(MainScreen.name);
//           },
//           child: Text('Submit'),
//         ),
//       ],
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(12)),
//       ),
//     ),
//     barrierDismissible: false,
//   );
// }
