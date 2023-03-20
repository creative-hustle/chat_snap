import 'package:flutter/material.dart';
import 'package:social_media_app/base/base_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(), fenix: true);
  }
}

class HomeController extends BaseController {

  List timeData = [
    {
      "profile":"assets/image/time_profile1.png",
      "name":"Prisha Mclaughlin",
      "time":"52 minute ago",
      "follow": false,
      "image":"assets/image/cat.png",
      "text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.",
      "share":"36",
      "like":"85",
      "comment":"12"
    },
    {
      "profile":"assets/image/time_profile2.png",
      "name":"Brenden Ramirez",
      "time":"1 h ago",
      "follow": true,
      "image":"",
      "text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.",
      "share":"14",
      "like":"42",
      "comment":"6"
    }
  ];
}
