import 'package:social_media_app/base/base_controller.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController(), fenix: true);
  }
}

class ProfileController extends BaseController {
  List profileData = [
    {
      "image": "assets/image/slide1.png",
    },
    {
      "image": "assets/image/slide2.png",
    },
    {
      "image": "assets/image/slide3.png",
    },
  ];
}
