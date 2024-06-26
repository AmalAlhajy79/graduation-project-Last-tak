import 'package:flutter/material.dart';
import 'package:newtes1/core/ui_sizer/app_sizer.dart';

import '../../../../../../core/consts/app_colors.dart';

class AppSubmitButton extends StatelessWidget {
  const AppSubmitButton({Key? key,this.onTap,this.label = 'Submit'}) : super(key: key);

  final Function()? onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 12.5.w,
        decoration: BoxDecoration(
          //  color: AppColors.orange,//.withAlpha(1500),
          gradient: LinearGradient(
              colors: [
                AppColors.orange,
                AppColors.orange,
                AppColors.orange.withOpacity(0.9),
                AppColors.orange.withOpacity(0.9),
                AppColors.orange.withOpacity(0.8),
                AppColors.orange.withOpacity(0.7),
                AppColors.orange.withOpacity(0.6),

                // AppColors.cyan.withOpacity(0.3),
                // AppColors.white.withAlpha(4)
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight
          ),
          // gradient: LinearGradient(
          //     colors: [
          //       Colors.cyan.shade900,
          //       Colors.cyan.shade800,
          //       Colors.cyan.shade800,
          //       Colors.cyan.shade600,
          //       AppColors.cyan.withOpacity(0.8),
          //       // AppColors.cyan.withOpacity(0.3),
          //       // AppColors.white.withAlpha(4)
          //     ],
          //     begin: Alignment.bottomLeft,
          //     end: Alignment.topRight
          // ),
          borderRadius: BorderRadius.circular(7.5.w),
        ),

        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
