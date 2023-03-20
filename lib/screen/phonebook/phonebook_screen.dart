import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/base/base_view_view_model.dart';
import 'package:social_media_app/res/app_colors.dart';
import 'package:social_media_app/res/style.dart';
import 'package:social_media_app/router/router_name.dart';
import 'package:social_media_app/screen/phonebook/phonebook_binding.dart';
import 'package:social_media_app/screen/phonebook/widget/all.dart';
import 'package:social_media_app/screen/phonebook/widget/facebook.dart';
import 'package:social_media_app/screen/phonebook/widget/instagram.dart';
import 'package:social_media_app/screen/phonebook/widget/linkedin.dart';
import 'package:social_media_app/screen/phonebook/widget/twitter.dart';

class PhoneBookScreen extends BaseView<PhoneBookController> {
  const PhoneBookScreen({super.key});

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(25.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 45.w,
                      width: 45.w,
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(8.r),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            AppColors.gradient1Color,
                            AppColors.gradient2Color
                          ],
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/image/back.png",
                          height: 10.h,
                          width: 20.w,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Phonebook",
                    style: poppinsRegular.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.text9Color,
                    ),
                  ),
                  Image.asset(
                    "assets/image/search_ic.png",
                    height: 20.w,
                    width: 20.w,
                  ),
                ],
              ),
            ),
            Container(
              height: 1.h,
              width: double.infinity,
              color: AppColors.text3Color,
            ),
            SizedBox(
              height: 6.h,
            ),
            TabBar(
              labelColor: AppColors.text4Color,
              labelStyle: poppinsRegular.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
              ),
              unselectedLabelColor: AppColors.text11Color,
              physics: const BouncingScrollPhysics(),
              isScrollable: true,
              labelPadding: EdgeInsets.symmetric(horizontal: 14.w),
              indicatorColor: AppColors.text4Color,
              controller: controller.tabController,
              tabs: const <Tab>[
                Tab(text: "ALL"),
                Tab(text: "FACEBOOK"),
                Tab(text: "LINKEDIN"),
                Tab(text: "INSTAGRAM"),
                Tab(text: "TWITTER"),
              ],
            ),
            Container(
              height: 1.h,
              width: double.infinity,
              color: AppColors.text3Color,
            ),
            Expanded(
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: controller.tabController,
                children: const [
                  AllScreen(),
                  FacebookScreen(),
                  LinkedinScreen(),
                  InstagramScreen(),
                  TwitterScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
