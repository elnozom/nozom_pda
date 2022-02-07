import 'package:get/get.dart';

import '../../../../presentation/unauthorized/controllers/unauthorized.controller.dart';

class UnauthorizedControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UnauthorizedController>(
      () => UnauthorizedController(),
    );
  }
}
