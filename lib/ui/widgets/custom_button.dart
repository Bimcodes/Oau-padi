import 'package:flutter/material.dart';
import 'package:oau_padi/shared/theme/app_theme.dart';

class CustomButton extends StatelessWidget {
  // The child widget to display inside the button
  final Widget child;

  // The function to exceute when the button is pressed
  final VoidCallback? onPressed;

  // The background color of the butti
  final Color backgroundColor;

  // The text color of the button
  final Color textColor;

  // The width of the button
  final double? width;

  // The height of the button

  final double? height;

  // The border radius of the button
  final double? radius;



  const CustomButton({Key? key,
  required this.child, required this.onPressed, this.backgroundColor = AppTheme.primaryColor, this.textColor= AppTheme.textColor1, this.width = double.infinity, this.radius, this.height}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width:width,
      height: height,
      child: ElevatedButton(onPressed: 
      onPressed, style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical:16),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 12)
        ),
        disabledBackgroundColor: backgroundColor.withOpacity(0.5),
        elevation: 0
      ),
       child: child)
    );
  }
}
