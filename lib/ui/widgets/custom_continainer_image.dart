import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerImage extends StatelessWidget {
  // The width of the container
  final double width;

  // The height of the container
  final double height;

  // The image in the container

  final String path;
  const CustomContainerImage({Key? key, required this.width, required this.height, required this.path }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(path))),
    );
  }
}
