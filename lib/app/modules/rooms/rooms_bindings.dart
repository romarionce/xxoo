import 'package:get/get.dart';
import 'package:xxoo/app/modules/rooms/rooms_controller.dart';

class RoomsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoomsController>(() => RoomsController());
  }
}
