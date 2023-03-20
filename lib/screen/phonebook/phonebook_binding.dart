import 'package:flutter/material.dart';
import 'package:social_media_app/base/base_controller.dart';

class PhoneBookBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneBookController(), fenix: true);
  }
}

class PhoneBookController extends BaseController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  List facebookData = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(length: 5, vsync: this);
    facebookData = [
      {
        "type": "A",
        "data": [
          {
            "image": "assets/image/profile1.png",
            "name": "Aarush Galloway",
            "tag": "aarushga"
          },
          {
            "image": "assets/image/profile2.png",
            "name": "Arla Potter",
            "tag": "arlapotter"
          },
          {
            "image": "assets/image/profile3.png",
            "name": "Arthur Aguilar",
            "tag": "arthuragu"
          },
          {
            "image": "assets/image/profile4.png",
            "name": "Addie Barrera",
            "tag": "addiebarr"
          }
        ]
      },
      {
        "type": "B",
        "data": [
          {
            "image": "assets/image/profile5.png",
            "name": "Arthur Aguilar",
            "tag": "arthuragu"
          },
          {
            "image": "assets/image/profile6.png",
            "name": "Addie Barrera",
            "tag": "addiebarr"
          },
          {
            "image": "assets/image/profile7.png",
            "name": "Ivonne Ribeiro",
            "tag": "ivonne"
          },
          {
            "image": "assets/image/profile8.png",
            "name": "Travis Head",
            "tag": "travis_head"
          }
        ]
      },
    ];
  }
}