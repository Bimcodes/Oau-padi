import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oau_padi/shared/theme/app_theme.dart';
import 'package:oau_padi/ui/widgets/custom_button.dart';
import 'package:oau_padi/utils/assets.gen.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    width: 413.w,
                    height: 374.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Assets.images.fruitsBackground))),
                  ),
                ),
                Positioned(
                  left: 260.w,
                  top: 10.h,
                  child: Image.asset(Assets.images.oauPadi),
                ),
              ],
            ),
            Container(
              width: 212.w,
              height: 63.h,
              //color: Colors.red,
              padding: const EdgeInsets.only(left: 10),
              margin: const EdgeInsets.only(left: 8),
              child: const Text(
                'Do your Shopping here on OAUPadi.',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: AppTheme.textColor4,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              width: 364.w,
              height: 40.h,
              margin: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),
              // color: Colors.red,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1), color: Colors.red),
            ),
            SizedBox(height: 25.h),
            const Center(
              child: Text(
                'Or connect with social media',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.textColor5),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20.h),
            CustomButton(
              onPressed: () {},
              width: 364.w,
              height: 67.h,
              radius: 19,
              backgroundColor: AppTheme.buttonBlue,
              child: Text('Continue with Google'),
            ),
            CustomButton(
              onPressed: () {},
              width: 364.w,
              height: 67.h,
              radius: 19,
              backgroundColor: AppTheme.buttonBlue,
              child: Row(children: [
                Container(
                  width: 18.22.w,
                  height: 9.65.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Assets.icons.facebookPng))),
                ),
                Text('Continue with facebook')
              ]),
            )
          ]),
    );
  }
}
