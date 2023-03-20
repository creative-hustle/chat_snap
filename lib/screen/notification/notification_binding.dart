import 'package:social_media_app/base/base_controller.dart';

class NotificationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationController(), fenix: true);
  }
}

class NotificationController extends BaseController {
  List notificationData = [
    {
      "image": "assets/image/profile1.png",
      "name": "Aarush Galloway",
      "post": "Shared your post",
      "time": "52 min ago",
    },
    {
      "image": "assets/image/profile2.png",
      "name": "Arla Potter",
      "post": "Liked your profile photo",
      "time": "1 h ago",
    },
    {
      "image": "assets/image/profile3.png",
      "name": "Arthur Aguilar",
      "post": "Liked your photo",
      "time": "2 h ago",
    },
    {
      "image": "assets/image/profile4.png",
      "name": "Addie Barrera",
      "post": "Commend your post",
      "time": "3 h ago",
    },
    {
      "image": "assets/image/profile5.png",
      "name": "Anne Southern",
      "post": "added photo in group",
      "time": "4 h ago",
    },
    {
      "image": "assets/image/profile6.png",
      "name": "Brenden Ramirez",
      "post": "Liked your post",
      "time": "5 h ago",
    },
    {
      "image": "assets/image/profile7.png",
      "name": "Brax Stott",
      "post": "Liked your comments",
      "time": "6 h ago",
    },
    {
      "image": "assets/image/profile8.png",
      "name": "Travis Head",
      "post": "added photo in group",
      "time": "3 h ago",
    }
  ];
}
