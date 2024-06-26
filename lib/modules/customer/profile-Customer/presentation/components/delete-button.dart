// import 'package:flutter/material.dart';
// import 'package:newtes1/core/consts/app_colors.dart';
// import 'package:newtes1/core/ui_sizer/app_sizer.dart';
// class DeleteButton extends StatelessWidget {
//   //const DeleteButton({Key? key}) : super(key: key);
//   String title;
//   IconData ?icon;
//   double? heightContainer;
//   double? weightContainer;
//   double? sizeIcon;
//   Color? colorContainer;
//   Color? colorIcon;
//   FontWeight? fontWeightText;
//   double? fontSizeText;
//   Color? colorTextStyle;
//   Function()? onTap;
//
//   DeleteButton({
//       required this.title,
//       this.icon,
//       this.heightContainer,
//       this.weightContainer,
//       this.sizeIcon,
//       this.colorContainer,
//       this.colorIcon,
//       this.fontWeightText,
//       this.fontSizeText,
//       this.colorTextStyle,
//        this.onTap
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return  InkWell(
//       onTap: onTap,
//       child: Container(
//           height:heightContainer!=null ?heightContainer: 10.5.w,
//           decoration: BoxDecoration(
//               color:colorContainer!=null?colorContainer: AppColors.red.withAlpha(1500),
//               borderRadius: BorderRadius.circular(10)),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                icon != null ? icon: Icons.delete_outline_outlined,////
//                 color:colorIcon !=null ?colorIcon : AppColors.white,
//                 size:sizeIcon != null ? sizeIcon : 20,
//               ),
//               Text(
//                title !=null ? title: " Delete My Account",
//                 style: TextStyle(
//                     color:colorTextStyle != null ? colorTextStyle: AppColors.white,
//                     fontSize:fontSizeText !=null ?fontSizeText : 11,
//                     fontWeight:fontWeightText !=null?fontWeightText: FontWeight.bold),
//               ),
//             ],
//           )),
//     );
//   }
// }
