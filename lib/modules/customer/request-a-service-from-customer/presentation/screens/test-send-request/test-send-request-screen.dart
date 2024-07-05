
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MyDropDown extends StatelessWidget {
  final controller = Get.find<ClassificationController>();
  final RxString selectedClassification = RxString('');

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.classifications.isEmpty) {
        return CircularProgressIndicator();
      }
      return DropdownButton<String>(
        items: controller.classifications.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: selectedClassification.value.isEmpty ? null : selectedClassification.value,
        hint: Text('Select Classification'),
        onChanged: (String? value) {
          selectedClassification.value = value ?? '';
          controller.fetchServiceTypesByClassification(value);
        },
      );
    });
  }
}

class MyDropDownServiceType extends StatelessWidget {
  final controller = Get.find<ClassificationController>();
  final RxString selectedServiceTypeSection = RxString('');

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.serviceSection.isEmpty) {
        return CircularProgressIndicator();
      }
      return DropdownButton<String>(
        items: controller.serviceSection.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: selectedServiceTypeSection.value.isEmpty ? null : selectedServiceTypeSection.value,
        hint: Text('Select Section'),
        onChanged: (String? value) {
          selectedServiceTypeSection.value = value ?? '';
        },
      );
    });
  }
}

class ClassificationController extends GetxController {
  final classifications = <String>[].obs;
  final serviceSection = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchClassifications();
  }

  Future<void> fetchClassifications() async {
    try {
      final response = await http.get(Uri.parse('http://192.168.43.31:8001/api/call-response/service-classifications'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        classifications.assignAll(data.map<String>((e) => e.toString()).toList());
      } else {
        throw 'Failed to load classifications';
      }
    } catch (e) {
      print('Error fetching classifications: $e');
    }
  }

  Future<void> fetchServiceTypesByClassification(String? classification) async {
    if (classification == null) return;
    try {
      final response = await http.get(Uri.parse('http://192.168.43.31:8001/api/call-response/service-types-by-classification?service_classification_id=${classifications.indexOf(classification) + 1}'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        serviceSection.assignAll(data.map<String>((e) => e.toString()).toList());
      } else {
        throw 'Failed to load service types';
      }
    } catch (e) {
      print('Error fetching service types: $e');
    }
  }
}

void main() {
  Get.put(ClassificationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Classification and section Dropdown'),
        ),
        body: Column(
          children: [
            Center(
              child: MyDropDown(),
            ),
            Center(
              child: MyDropDownServiceType(),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
//
// class MyDropDown extends StatelessWidget {
//   final List<String> classifications;
//   final RxString selectedClassification = RxString('');
// final controller=ClassificationController();
//   MyDropDown(this.classifications);
//
//
//   @override
//   Widget build(BuildContext context) {
//     print("............classifications........");
//     print(classifications);
//     controller.fetchClassifications();
//     return Obx(() => DropdownButton<String>(
//       items: controller.classifications.map((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//       value: selectedClassification.value.isEmpty ? null : selectedClassification.value,
//       hint: Text('Select Classification'),
//       onChanged: (String? value) {
//         selectedClassification.value = value ?? '';
//         // controller.fetchClassifications();
//       },
//     ));
//   }
// }
//
// class MyDropDownServiceType extends StatelessWidget {
//   final List<String> ServiceTypeSection;
//   final RxString selectedServiceTypeSection = RxString('');
//   MyDropDownServiceType(this.ServiceTypeSection);
//   final controller=ClassificationController();
//
//
//   @override
//   Widget build(BuildContext context) {
//     print("............ServiceTypeSection........");
//     print(ServiceTypeSection);
//     controller.fetchservice_types_by_classification();
//     return Obx(() => DropdownButton<String>(
//       items: controller.serviceSection.map((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//       value: selectedServiceTypeSection.value.isEmpty ? null : selectedServiceTypeSection.value,
//       hint: Text('Select Section'),
//       onChanged: (String? value) {
//         selectedServiceTypeSection.value = value ?? '';
//         // controller.fetchservice_types_by_classification();
//       },
//     ));
//   }
// }
//
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   final List<String> classifications = ['Creativity', 'Health', 'Mechanics'];
//   final List<String> serviceTypeSection = ['Creativity1 Service'];
// final controller=ClassificationController();
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Classification and section Dropdown'),
//         ),
//         body: Column(
//           children: [
//             Center(
//               child: MyDropDown(controller.classifications),
//             ),
//             Center(
//               child: MyDropDownServiceType(controller.serviceSection),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// class ClassificationController extends GetxController {
//   final classifications = <String>[].obs;
//   final serviceSection = <String>[].obs;
//   @override
//   Future<void> onInit() async {
//     super.onInit();
//     // استدعاء دالة لاحضار التصنيفات
//    await fetchClassifications();
//     await fetchservice_types_by_classification();
//   }
//
//  Future<void>  fetchClassifications() async {
//     final response = await http.get(Uri.parse('http://192.168.43.31:8001/api/call-response/service-classifications'));
//
//     if (response.statusCode == 200) {
//       final List<dynamic> data = json.decode(response.body);
//       classifications.assignAll(data.map<String>((e) => e.toString()).toList());
//       print(".........classifications");
//       print(classifications);
//     } else {
//       throw 'Failed to load classifications';
//     }
//   }
//
//   Future<void>  fetchservice_types_by_classification() async {
//     final response = await http.get(Uri.parse('http://192.168.43.31:8001/api/call-response/service-types-by-classification?service_classification_id=1'));
//
//     if (response.statusCode == 200) {
//       final List<dynamic> data = json.decode(response.body);
//       serviceSection.assignAll(data.map<String>((e) => e.toString()).toList());
//       print(".........serviceSection");
//       print(serviceSection);
//     } else {
//       throw 'Failed to load classifications';
//     }
//   }
//
//
// }
//
