import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:oau_padi/shared/theme/app_theme.dart';

class IconContainer extends GetView {
  final Function()? onPressed;
  final IconData icon;
  final double? size;
  final Color? color;
  final Color? backgroundColor;
  final bool? isRound;
  final Color borderColor;
  final double height;
  final double width;

  const IconContainer(
      {this.height = 45,
      this.width = 43,
      this.borderColor = AppTheme.textColor5,
      this.isRound = true,
      this.backgroundColor = AppTheme.textColor5,
      this.size,
      required this.icon,
      required this.onPressed,
      this.color = AppTheme.textColor4,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(isRound == false ? 12.r : 100.r),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: IconButton(
        padding: const EdgeInsets.all(8),
        icon: Icon(
          icon,
          size: size,
          color: color,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
