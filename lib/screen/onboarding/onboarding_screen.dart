import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:social_media_app/base/base_view_view_model.dart';
import 'package:social_media_app/res/app_colors.dart';
import 'package:social_media_app/res/style.dart';
import 'package:social_media_app/router/router_name.dart';
import 'package:social_media_app/screen/onboarding/onboarding_binding.dart';

class OnBoardingScreen extends BaseView<OnBoardingController> {
  const OnBoardingScreen({super.key});

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/image/onboarding.png",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            SizedBox(
              height: 36.h,
            ),

            CarouselSlider.builder(
              itemCount: controller.itemsText.length,
              itemBuilder: (context, index, realIndex) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 29.w),
                      child: Text(
                        controller.itemsText[index]["title"].toString(),
                        textAlign: TextAlign.center,
                        style: poppinsRegular.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 40.sp,
                          color: AppColors.text9Color,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 42.w),
                      child: Text(
                        controller.itemsText[index]["text"].toString(),
                        textAlign: TextAlign.center,
                        style: poppinsRegular.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: AppColors.text10Color,
                        ),
                      ),
                    ),
                  ],
                );
              },
              carouselController: controller.buttonCarouselController,
              options: CarouselOptions(
                height: 180.h,
                autoPlay: true,
                viewportFraction: 1.0,
                initialPage: 0,
                onPageChanged: (index, reason) {
                  controller.sliderCurrent = index;
                  controller.update();
                },
              ),
            ),
            Center(
              child: AnimatedSmoothIndicator(
                activeIndex: controller.sliderCurrent,
                count: 3,
                effect: CustomizableEffect(
                  activeDotDecoration: DotDecoration(
                    width: 56.w,
                    height: 8.h,
                    color: AppColors.indicatorColor,
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                  dotDecoration: DotDecoration(
                    width: 12.w,
                    height: 8.h,
                    color: AppColors.defaultColor,
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: (){
                Get.toNamed(RouterName.signing);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 25.w),
                height: 58.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.gradient1Color,
                      AppColors.gradient2Color,
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    "Get started",
                    style: poppinsRegular.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
