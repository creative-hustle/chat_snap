import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/base/base_view_view_model.dart';
import 'package:social_media_app/res/app_colors.dart';
import 'package:social_media_app/res/style.dart';
import 'package:social_media_app/screen/followers/followers_binding.dart';

class FollowerScreen extends BaseView<FollowersController> {
  const FollowerScreen({super.key});

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 96.h,
              width: double.infinity,
              padding: EdgeInsets.all(25.r),
              child: Stack(
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
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Followers (4K)",
                      style: poppinsRegular.copyWith(
                        fontSize: 18.sp,
                        color: AppColors.text9Color,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: controller.followData.length,
                itemBuilder: (context, index) {
                  String image = controller.followData[index]["image"];
                  String name = controller.followData[index]["name"];
                  String username = controller.followData[index]["username"];
                  bool follow = controller.followData[index]["follow"];
                  return Column(
                    children: [
                      Container(
                        height: 1.h,
                        width: double.infinity,
                        color: AppColors.text3Color,
                      ),
                      Padding(
                        padding: EdgeInsets.all(25.r),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  image,
                                  height: 50.w,
                                  width: 50.w,
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      name,
                                      style: poppinsRegular.copyWith(
                                        fontSize: 14.sp,
                                        color: AppColors.text9Color,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "@$username",
                                      style: poppinsRegular.copyWith(
                                        fontSize: 12.sp,
                                        color: AppColors.text10Color,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            follow
                                ? Container(
                                  width: 86.w,
                                  height: 34.h,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(30.r),
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
                                    child: Text(
                                      "Follow",
                                      style: poppinsRegular.copyWith(
                                        fontSize: 12.sp,
                                        color: AppColors.whiteColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                )
                                : Container(
                                    width: 86.w,
                                    height: 34.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.text3Color,
                                      ),
                                      borderRadius: BorderRadius.circular(30.r),
                                      color: AppColors.whiteColor,
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Following",
                                        style: poppinsRegular.copyWith(
                                          fontSize: 12.sp,
                                          color: AppColors.blackColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1.h,
                        width: double.infinity,
                        color: AppColors.text3Color,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
