import 'package:get/get.dart';
import 'package:oau_padi/onboarding_page.dart';
import 'package:oau_padi/sign_in.dart';
import 'package:oau_padi/verify_phone_number.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    // Onboarding page
    GetPage(
      name: Routes.onboarding,
      page: () => const OnboardingPage(),
    ),
    // Auth
    GetPage(
      name: Routes.auth,
      page: () => const AuthPage(),
    ),

    GetPage(
      name: Routes.verifyPhoneNumber,
      page: ()=> const VerifyPhoneNumber()

    )
  ];
}
