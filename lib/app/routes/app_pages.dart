import 'package:get/get.dart';

import 'package:carry/app/modules/category/bindings/category_binding.dart';
import 'package:carry/app/modules/category/views/category_view.dart';
import 'package:carry/app/modules/coupon/bindings/coupon_binding.dart';
import 'package:carry/app/modules/coupon/views/coupon_view.dart';
import 'package:carry/app/modules/detail_furniture/bindings/detail_furniture_binding.dart';
import 'package:carry/app/modules/detail_furniture/views/detail_furniture_view.dart';
import 'package:carry/app/modules/furniture/bindings/furniture_binding.dart';
import 'package:carry/app/modules/furniture/views/furniture_view.dart';
import 'package:carry/app/modules/home/bindings/home_binding.dart';
import 'package:carry/app/modules/home/views/home_view.dart';
import 'package:carry/app/modules/login/bindings/login_binding.dart';
import 'package:carry/app/modules/login/views/login_view.dart';
import 'package:carry/app/modules/profile/bindings/profile_binding.dart';
import 'package:carry/app/modules/profile/views/profile_view.dart';
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
    GetPage(
      name: _Paths.DETAIL_FURNITURE,
      page: () => DetailFurnitureView(),
      binding: DetailFurnitureBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.COUPON,
      page: () => CouponView(),
      binding: CouponBinding(),
    ),
  ];
}
