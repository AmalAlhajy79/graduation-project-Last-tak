import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

import '../screens/test-send-request/mix-final-toSend-Request.dart';


void showDialogNoteToSendRequest(BuildContext context) {
  TextEditingController noteController = TextEditingController();
  ClassificationController controller=ClassificationController();
  Get.dialog(
    AlertDialog(
      title: Text('Send Note'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Please enter the note to send it to Provider:',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 10),
          TextField(
            controller: noteController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Youre Note',
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
          onPressed: ()async {
            if (noteController.text.isNotEmpty){
             await controller.sendUrgentRequestToProvider(noteController.text);
             Navigator.of(context).pop();

             // Get.back();

            } else {
              Get.snackbar('Error', 'Please enter a note',
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
