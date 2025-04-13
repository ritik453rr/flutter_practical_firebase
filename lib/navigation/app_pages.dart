import 'package:authentication_ptcl/navigation/app_routes.dart';
import 'package:authentication_ptcl/views/home/home_binding.dart';
import 'package:authentication_ptcl/views/home/home_view.dart';
import 'package:authentication_ptcl/views/login/login_binding.dart';
import 'package:authentication_ptcl/views/login/login_view.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
