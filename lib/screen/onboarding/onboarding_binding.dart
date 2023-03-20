import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/base/base_controller.dart';

class OnBoardingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingController(), fenix: true);
  }
}

class OnBoardingController extends BaseController {
  CarouselController buttonCarouselController = CarouselController();
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  int sliderCurrent = 0;
  List itemsText = [
    {
      "title":"Let's connect with each other",
      "text":  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod"
    },
    {
      "title":"Let's connect with each other",
      "text":  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod"
    },
    {
      "title":"Let's connect with each other",
      "text":  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod"
    }
  ];
}