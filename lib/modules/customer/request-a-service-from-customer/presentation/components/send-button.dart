import 'package:flutter/material.dart';
import 'package:newtes1/core/consts/app_colors.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';
class SendButton extends StatelessWidget {
  //const DeleteButton({Key? key}) : super(key: key);
  String title;
  IconData ?icon;
  double? heightContainer;
  double? weightContainer;
  double? sizeIcon;
  Color? colorContainer;
  Color? colorIcon;
  FontWeight? fontWeightText;
  double? fontSizeText;
  Color? colorTextStyle;
  BorderRadiusGeometry? borderRadius;
  Function()? onTap;

  SendButton({
      required this.title,
      this.icon,
      this.heightContainer,
      this.weightContainer,
      this.sizeIcon,
      this.colorContainer,
      this.colorIcon,
      this.fontWeightText,
      this.fontSizeText,
      this.colorTextStyle,
    this.borderRadius,
       this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
          height:heightContainer!=null ?heightContainer: 10.5.w,
          decoration: BoxDecoration(
              color:colorContainer!=null?colorContainer: AppColors.red.withAlpha(1500),
              borderRadius:borderRadius!=null?borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: [
              Colors.cyan.shade900,
              Colors.cyan.shade800,
              Colors.cyan.shade800,
              Colors.cyan.shade600,
              AppColors.green.withOpacity(0.8),
              AppColors.cyan.withOpacity(0.7),

            ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            icon!= null?  Icon(
              icon,////
                color:colorIcon !=null ?colorIcon : AppColors.white,
                size:sizeIcon != null ? sizeIcon : 20,
              ):Text(""),
              Text(
               title !=null ? title: "Send",
                style: TextStyle(
                    color:colorTextStyle != null ? colorTextStyle: AppColors.white,
                    fontSize:fontSizeText !=null ?fontSizeText : 12,
                    fontWeight:fontWeightText !=null?fontWeightText: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
