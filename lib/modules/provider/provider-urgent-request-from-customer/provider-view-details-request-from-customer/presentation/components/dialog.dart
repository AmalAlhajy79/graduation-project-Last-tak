// import 'package:flutter/material.dart';
// import 'package:newtes1/core/consts/app_colors.dart';
// import 'package:newtes1/core/ui_sizer/app_sizer.dart';
//
// // this is main for project
// class DialogTest extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         dialogTheme: DialogTheme(
//           backgroundColor: Colors.white, // لون الـ Dialog الخارجي
//         ),
//       ),
//       home:
//       Scaffold(
//         appBar: AppBar(
//           title: Text('أدخل سبب الرفض'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               showDialog(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return Theme(
//                     data: ThemeData(
//                         //  primaryColor: Colors.grey, // لون الـ TextField
//                         ),
//                     child:
//                     Container(
//                       color: Colors.blueGrey.withOpacity(0.1),
//                       child:
//                       AlertDialog(
//                         title: Row(
//                           children: [
//                             Text(
//                               'Enter the resion for rejection',
//                               style: TextStyle(
//                                   fontSize: 13,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.black),
//                             ),
//                             IconButton(onPressed: (){}, icon:Icon(Icons.close))
//                           ],
//                         ),
//                         content: Container(
//                           height: 28.w,
//                           decoration: BoxDecoration(
//                             color: Colors.black12,
//                             borderRadius: BorderRadius.all(
//                               Radius.circular(9.5),
//                             ),
//                           ),
//                           child: TextField(
//                             cursorHeight: 20,
//                             cursorWidth: 1,
//                             decoration: InputDecoration(
//                                 hintText: '  Write Here',
//                                 hintStyle: TextStyle(
//                                     fontSize: 11, fontWeight: FontWeight.w500),
//                                 border: InputBorder.none),
//                           ),
//                         ),
//                         actions: <Widget>[
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               ElevatedButton(
//                                 onPressed: () {
//                                   // Add submit logic here
//                                   Navigator.of(context).pop();
//                                 },
//                                 child: Text('Submit'),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               );
//             },
//             child: Text('Show Dialog'),
//           ),
//         ),
//       ),
//     );
//   }
// }
