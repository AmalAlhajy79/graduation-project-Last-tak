import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

import '../controller/show-my-services/show-my-services-controller.dart';

void showCancelDialog(BuildContext context, int reservationId) {
  TextEditingController reasonController = TextEditingController();

  Get.dialog(
    AlertDialog(
      title: Text('Cancel Reservation'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Please enter the reason for cancellation:',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 10),
          TextField(
            controller: reasonController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Reason for cancellation',
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            if (reasonController.text.isNotEmpty) {
              ServiceController().cancelReservation(reservationId, reasonController.text);
              Get.back();
            } else {
              Get.snackbar('Error', 'Please enter a reason',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.red,
                  colorText: Colors.white);
            }
          },
          child: Text('Submit'),
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),
    barrierDismissible: false,
  );
}
