import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oau_padi/shared/constants.dart';
import 'package:oau_padi/shared/theme/app_theme.dart';
import 'package:oau_padi/utils/assets.gen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.only(left: 10, right: 10, bottom: 50.h),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.oauBackgroundImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Container(
                    width: 112,
                    height: 107,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Assets.images.oauLogo))),
                  ),
                ),
                const Text('Welcome To OAU PADI!',
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w900,
                        color: AppTheme.statusWhite),
                    textAlign: TextAlign.center),
                const Text(
                    'Get Convienient As No.1 OAU Students Convience Platform is Here!',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: AppTheme.statusWhite70),
                    textAlign: TextAlign.center),
                Container(
                  width: 353.w,
                  height: 67.h,
                  padding: const EdgeInsets.all(17),
                  decoration: BoxDecoration(
                      color: AppTheme.buttonGreen,
                      borderRadius: BorderRadius.circular(19)),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text('Get Started',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppTheme.statusWhite70),
                        textAlign: TextAlign.center),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
