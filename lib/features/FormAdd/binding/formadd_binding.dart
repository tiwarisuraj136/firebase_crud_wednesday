import 'package:firebase_crud_wednesday/features/FormAdd/controller/formadd_controller.dart';
import 'package:get/get.dart';

class FormAddBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(FormAddController());
    // TODO: implement dependencies
  }

}