import 'package:firebase_crud_wednesday/core/routes_constant.dart';
import 'package:firebase_crud_wednesday/features/FormAdd/binding/formadd_binding.dart';
import 'package:firebase_crud_wednesday/features/FormAdd/view/formadd_page.dart';
import 'package:firebase_crud_wednesday/features/home/home/home_page_binding.dart';
import 'package:firebase_crud_wednesday/features/home/home/home_page_view.dart';
import 'package:get/get.dart';

List<GetPage> getpages = [
  GetPage(
      name: RoutesConstant.addForm,
      page: () => const FormAddPage(),
    binding: FormAddBinding(),
  ),

  GetPage(
   name: RoutesConstant.home,
    page: () => HomePageView(),
    binding: homePageBinding(),
  ),

 /* GetPage(
      name: RoutesConstant.splash,
      page: () => splashScreenView(),
      binding: splashBinding(),
  ),

  GetPage(
      name: RoutesConstant.signUp,
      page: () => signUpPageView(),
      binding: signUpBinding(),
  ),

  GetPage(
      name: RoutesConstant.profile,
      page: () => profilePageView(),
      binding: profilePageBinding(),
  ),

  GetPage(
    name: RoutesConstant.dashBoard,
    page: () => dashboardView(),
    binding: dashboardBinding(),
  ),*/

];