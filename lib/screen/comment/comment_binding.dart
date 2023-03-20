import 'package:social_media_app/base/base_controller.dart';

class CommentBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CommentController(), fenix: true);
  }
}

class CommentController extends BaseController {
  List commentData = [
    {
      "image": "assets/image/comment1.png",
      "name": "Aarush Galloway",
      "time": "52 minutes ago",
      "like": false,
      "text":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    },
    {
      "image": "assets/image/comment2.png",
      "name": "Arthur Aguilar",
      "time": "52 minutes ago",
      "like": true,
      "text":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
    },
    {
      "image": "assets/image/comment3.png",
      "name": "Brenden Ramirez",
      "time": "52 minutes ago",
      "like": true,
      "text":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
    }
  ];
}
