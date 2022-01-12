import 'package:get/get.dart';

import '../controllers/detail_furniture_controller.dart';

class DetailFurnitureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailFurnitureController>(
      () => DetailFurnitureController(),
    );
  }
}
