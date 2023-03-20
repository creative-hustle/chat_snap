import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/base/base_view_view_model.dart';
import 'package:social_media_app/res/app_colors.dart';
import 'package:social_media_app/res/style.dart';
import 'package:social_media_app/router/router_name.dart';
import 'package:social_media_app/screen/profile/profile_binding.dart';

class ProfileScreen extends BaseView<ProfileController> {
  const ProfileScreen({super.key});

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
                    "Profile",
                    style: poppinsRegular.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.text9Color),
                  ),
                  Image.asset(
                    "assets/image/like.png",
                    height: 20.h,
                    width: 23.w,
                  )
                ],
              ),
            ),
            Container(
              height: 1.h,
              width: double.infinity,
              color: AppColors.text3Color,
            ),
            SizedBox(
              height: 34.h,
            ),
            Container(
              height: 110.w,
              width: 110.w,
              padding: EdgeInsets.all(4.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80.r),
                border: Border.all(
                  color: AppColors.text4Color,
                  width: 2,
                ),
              ),
              child: Image.asset(
                "assets/image/menu_profile.png",
                height: 110.w,
                width: 110.w,
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Text(
              "Graphic-Resources",
              style: poppinsRegular.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.text9Color,
              ),
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              "Interior Designer",
              style: poppinsRegular.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.text10Color,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 124.w,
                  height: 40.h,
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.text3Color,
                    ),
                    borderRadius: BorderRadius.circular(30.r),
                    color: AppColors.whiteColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 10.w,
                        width: 10.w,
                        decoration: BoxDecoration(
                          color: AppColors.text15Color,
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                      ),
                      Image.asset(
                        "assets/image/message_ic.png",
                        width: 18.w,
                        height: 16.h,
                      ),
                      Text(
                        "Message",
                        style: poppinsRegular.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 14.w,
                ),
                Container(
                  width: 86.w,
                  height: 34.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
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
                ),
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RouterName.follower);
                    },
                    child: Container(
                      height: 82.w,
                      width: 90.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: AppColors.text3Color,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "6.3K",
                            style: poppinsRegular.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 25.sp,
                              color: AppColors.text1Color,
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Followers",
                            style: poppinsRegular.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: AppColors.text10Color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 82.w,
                    width: 90.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: AppColors.text3Color,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "572",
                          style: poppinsRegular.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 25.sp,
                            color: AppColors.text1Color,
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "Post",
                          style: poppinsRegular.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: AppColors.text10Color,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 82.w,
                    width: 90.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: AppColors.text3Color,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "2.5k",
                          style: poppinsRegular.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 25.sp,
                            color: AppColors.text1Color,
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "Following",
                          style: poppinsRegular.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: AppColors.text10Color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              height: 1.h,
              width: double.infinity,
              color: AppColors.text3Color,
            ),
            SizedBox(
              height: 26.h,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 17.w,
                  );
                },
                itemCount: controller.profileData.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 25.w,right: 25.w,bottom: 10.h),
                itemBuilder: (context, index) {
                  return Image.asset(
                    controller.profileData[index]["image"],
                    width: 143.w,
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
