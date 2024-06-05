import 'package:firebase_crud_wednesday/features/home/home/home_page_controller.dart';
import 'package:get/get.dart';

class homePageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    // TODO: implement dependencies
  }

}