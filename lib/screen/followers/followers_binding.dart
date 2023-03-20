import 'package:social_media_app/base/base_controller.dart';

class FollowersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FollowersController(), fenix: true);
  }
}

class FollowersController extends BaseController {
  List followData = [
    {
      "image": "assets/image/follower1.png",
      "name": "Darci Conroy",
      "username": "darciconroy",
      "follow": true,
    },
    {
      "image": "assets/image/follower2.png",
      "name": "Yasmin Mcgregor",
      "username": "yasminmcgregor",
      "follow": false,
    },
    {
      "image": "assets/image/follower3.png",
      "name": "Prisha Mclaughlin",
      "username": "prishalaugh",
      "follow": true,
    },
    {
      "image": "assets/image/follower4.png",
      "name": "Danny O’Reilly",
      "username": "dannyo’reilly",
      "follow": true,
    },
    {
      "image": "assets/image/follower5.png",
      "name": "Monique Everett",
      "username": "moniqueeverett",
      "follow": true,
    },
    {
      "image": "assets/image/follower6.png",
      "name": "Saoirse Hopper",
      "username": "saoirsehop",
      "follow": false,
    },
    {
      "image": "assets/image/follower7.png",
      "name": "Melina Charlton",
      "username": "melinacharlton",
      "follow": false,
    },

  ];
}
