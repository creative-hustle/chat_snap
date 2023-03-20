import 'package:flutter/material.dart';
import 'package:social_media_app/base/base_controller.dart';

class MessageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageController(), fenix: true);
  }
}

class MessageController extends BaseController {
  final msg = TextEditingController();

  List msgData = [
    {
      "author": "0",
      "only": true,
      "image": "assets/image/menu_profile.png",
      "msg": "Yeah it’s great idea, you know - everyone needs water, I dont know about stones xD"
    },
    {
      "author": "1",
      "image": "assets/image/chat_profile.png",
      "msg": "But  I don’t know what to sell. Maybe I will sell stones and water"
    },
    {
      "author": "1",
      "image": "assets/image/chat_profile.png",
      "msg": "I’m fine, i’m thinking about new project. I want to open an online store"
    },
    {
      "author": "0",
      "image": "assets/image/menu_profile.png",
      "msg": "Its great, UK is awesome, espesially London. New job is good so far! How about you?"
    },
    {
      "author": "0",
      "image": "assets/image/menu_profile.png",
      "msg": "Hey too!"
    },
    {
      "author": "1",
      "only": true,
      "image": "assets/image/chat_profile.png",
      "msg": "Hey! How are you? It’s been a while. How is your travel to UK?"
    },






  ];
}
