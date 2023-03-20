import 'package:social_media_app/base/base_controller.dart';

class SigningBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SigningController(), fenix: true);
  }
}

class SigningController extends BaseController {}
