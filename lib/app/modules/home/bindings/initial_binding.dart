import 'package:get/get.dart';
import '../controllers/admin_controller.dart';
import '../controllers/customer_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminController>(() => AdminController());
    Get.lazyPut<CustomerController>(() => CustomerController());
  }
}
