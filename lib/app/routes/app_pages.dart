import 'package:get/get.dart';

import 'package:carry/app/modules/category/bindings/category_binding.dart';
import 'package:carry/app/modules/category/views/category_view.dart';
import 'package:carry/app/modules/furniture/bindings/furniture_binding.dart';
import 'package:carry/app/modules/furniture/views/furniture_view.dart';
import 'package:carry/app/modules/home/bindings/home_binding.dart';
import 'package:carry/app/modules/home/views/home_view.dart';
import 'package:carry/app/modules/login/bindings/login_binding.dart';
import 'package:carry/app/modules/login/views/login_view.dart';
import 'package:carry/app/modules/register/bindings/register_binding.dart';
import 'package:carry/app/modules/register/views/register_view.dart';
import 'package:carry/app/modules/welcome/bindings/welcome_binding.dart';
import 'package:carry/app/modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY,
      page: () => CategoryView(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: _Paths.FURNITURE,
      page: () => FurnitureView(),
      binding: FurnitureBinding(),
    ),
  ];
}
