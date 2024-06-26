// import 'package:flutter/material.dart';
// import 'package:newtes1/core/core_components/delete-button.dart';
// import 'package:newtes1/core/ui_sizer/app_sizer.dart';
//
// import '../../../../../core/consts/app_colors.dart';
//
//
//
// class Separed extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Example'),
//         ),
//         body:
//         ListView.separated(
//           separatorBuilder: (context, index) => Divider(),
//           itemCount: 5,
//           itemBuilder: (context, index) {
//             return Column(
//               children: [
//                 ListTile(
//                   title: Text('List Tile $index'),
//                   subtitle:  Text('List Tile $index'),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     SizedBox(
//                     width: 24.w,
//                     child: DeleteButton(
//                       title: "Delete",
//                       weightContainer: 16.w,
//                       heightContainer: 5.w,
//                       fontWeightText: FontWeight.w500,
//                       fontSizeText: 9.5,
//                       colorTextStyle: AppColors.white,
//                       colorContainer: AppColors.red,
//                       borderRadius: BorderRadius.circular(7),
//                       onTap: () {},
//                     ),
//                   ),
//                     SizedBox(
//                       width: 24.w,
//                       child: DeleteButton(
//                         title: "Delete",
//                         weightContainer: 16.w,
//                         heightContainer: 5.w,
//                         fontWeightText: FontWeight.w500,
//                         fontSizeText: 9.5,
//                         colorTextStyle: AppColors.white,
//                         colorContainer: AppColors.red,
//                         borderRadius: BorderRadius.circular(7),
//                         onTap: () {},
//                       ),
//                     ),
//                     SizedBox(
//                       width: 24.w,
//                       child: DeleteButton(
//                         title: "Delete",
//                         weightContainer: 16.w,
//                         heightContainer: 5.w,
//                         fontWeightText: FontWeight.w500,
//                         fontSizeText: 9.5,
//                         colorTextStyle: AppColors.white,
//                         colorContainer: AppColors.red,
//                         borderRadius: BorderRadius.circular(7),
//                         onTap: () {},
//                       ),
//                     )
//                     // ElevatedButton(onPressed: () {}, child: Text('Button 1')),
//                     // ElevatedButton(onPressed: () {}, child: Text('Button 2')),
//                     // ElevatedButton(onPressed: () {}, child: Text('Button 3')),
//                   ],
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
