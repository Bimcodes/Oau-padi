import 'package:flutter/material.dart';
import 'package:oau_padi/utils/assets.gen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.oauBackgroundImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(Assets.images.oauLogo))),
                  ),
                ),
                Text('Welcome To OAU PADI!'),
                Text('Get Convienient As No.1 OAU Students Convience Platform is Here!'),

                Container(
                  child: GestureDetector(
                  onTap: (){},
                  child: Text('Get Started'),
                ),)
              ],
            )),
      ),
    );
  }
}
