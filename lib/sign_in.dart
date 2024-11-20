import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oau_padi/shared/theme/app_theme.dart';
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
              color: Colors.red,
              padding: const EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(left: 8),
              child: const Text(
                'Do your Shopping here on OAUPadi.',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: AppTheme.textColor4,
                    fontSize: 26,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ]),
    );
  }
}
