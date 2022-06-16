import 'package:get/get.dart';

import '../controller/form_controller.dart';

class FormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormController>(() => FormController());
  }
}