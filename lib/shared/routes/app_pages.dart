import 'package:get/get.dart';
import 'package:oau_padi/onboarding_page.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    // Onboarding page
    GetPage(name: Routes.onboarding, page: ()=> const OnboardingPage())
  ];
}
