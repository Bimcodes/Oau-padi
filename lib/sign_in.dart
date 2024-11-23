import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:oau_padi/shared/routes/app_pages.dart';
import 'package:oau_padi/shared/theme/app_theme.dart';
import 'package:oau_padi/ui/widgets/custom_button.dart';
import 'package:oau_padi/ui/widgets/custom_continainer_image.dart';
import 'package:oau_padi/ui/widgets/custom_phone_number_textfield.dart';
import 'package:oau_padi/ui/widgets/custom_sizedbox.dart';
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
                    child: CustomContainerImage(
                        width: 413,
                        height: 374,
                        path: Assets.images.fruitsBackground)),
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: PhoneNumberTextField(child: Text('Number')),
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: CustomButton(
                onPressed: () {
                  Get.toNamed(Routes.verifyPhoneNumber);
                },
                width: 364.w,
                height: 67.h,
                radius: 19,
                backgroundColor: AppTheme.buttonBlue,
                child: Row(
                  children: [
                    CustomContainerImage(
                        width: 25, height: 20, path: Assets.icons.googlePng),
                    Space.w(15),
                    const Center(child: Text('Continue with Google')),
                  ],
                ),
              ),
            ),
            Space.h(15),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: CustomButton(
                onPressed: () {},
                width: 364.w,
                height: 67.h,
                radius: 19,
                backgroundColor: AppTheme.buttonDeepBlue,
                child: Row(children: [
                  CustomContainerImage(
                      width: 25, height: 20, path: Assets.icons.facebookPng),
                  Space.w(15),
                  const Center(child: Text('Continue with facebook'))
                ]),
              ),
            )
          ]),
    );
  }
}
