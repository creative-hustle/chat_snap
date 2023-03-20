import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_media_app/base/base_view_view_model.dart';
import 'package:social_media_app/res/app_colors.dart';
import 'package:social_media_app/res/style.dart';
import 'package:social_media_app/router/router_name.dart';
import 'package:social_media_app/screen/home/home_binding.dart';

class MenuScreen extends BaseView<HomeController> {
  const MenuScreen({super.key});

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 25.w,
                  right: 25.w,
                  top: 25.h,
                  bottom: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.toNamed(RouterName.profile);
                      },
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4.r),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80.r),
                              border: Border.all(
                                  color: AppColors.text4Color, width: 2),
                            ),
                            child: Image.asset(
                              "assets/image/menu_profile.png",
                              height: 45.w,
                              width: 45.w,
                            ),
                          ),
                          SizedBox(
                            width: 18.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Creative-Hustlers",
                                style: poppinsRegular.copyWith( 
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.text9Color,
                                ),
                              ),
                              Text(
                                "@creative_hustlers",
                                style: poppinsRegular.copyWith(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.text10Color,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: Container(
                        height: 36.w,
                        width: 36.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60.r),
                            border: Border.all(
                              width: 2,
                              color: AppColors.text3Color,
                            )),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/image/arrow.svg",
                            height: 10.h,
                            width: 6.w,
                            fit: BoxFit.none,
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
              SizedBox(
                height: 22.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 25.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
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
                height: 47.h,
              ),
              InkWell(
                highlightColor: AppColors.whiteColor,
                onTap: () {
                  Get.toNamed(RouterName.notification);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Notification",
                                style: poppinsRegular.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.sp,
                                  color: AppColors.text1Color,
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                "See your recent activity",
                                style: poppinsRegular.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: AppColors.text10Color,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 24.w,
                            width: 24.w,
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(60.r),
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
                                "35",
                                style: poppinsRegular.copyWith(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Container(
                            height: 36.w,
                            width: 36.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.r),
                                border: Border.all(
                                  width: 2,
                                  color: AppColors.text3Color,
                                )),
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/image/arrow.svg",
                                height: 10.h,
                                width: 6.w,
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Friends",
                              style: poppinsRegular.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 15.sp,
                                color: AppColors.text1Color,
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "Friendlist totals",
                              style: poppinsRegular.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: AppColors.text10Color,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 36.w,
                      width: 36.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60.r),
                          border: Border.all(
                            width: 2,
                            color: AppColors.text3Color,
                          )),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/image/arrow.svg",
                          height: 10.h,
                          width: 6.w,
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              InkWell(
                highlightColor: AppColors.whiteColor,
                onTap: (){
                  Get.toNamed(RouterName.message);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Messages",
                                style: poppinsRegular.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.sp,
                                  color: AppColors.text1Color,
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                "Message your friends",
                                style: poppinsRegular.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: AppColors.text10Color,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 24.w,
                            width: 24.w,
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(60.r),
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
                                "2",
                                style: poppinsRegular.copyWith(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Container(
                            height: 36.w,
                            width: 36.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.r),
                                border: Border.all(
                                  width: 2,
                                  color: AppColors.text3Color,
                                )),
                            child: Center(
                              child: SvgPicture.asset(
                                "assets/image/arrow.svg",
                                height: 10.h,
                                width: 6.w,
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Albums",
                              style: poppinsRegular.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 15.sp,
                                color: AppColors.text1Color,
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "Save or post your albums",
                              style: poppinsRegular.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: AppColors.text10Color,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 36.w,
                      width: 36.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60.r),
                          border: Border.all(
                            width: 2,
                            color: AppColors.text3Color,
                          )),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/image/arrow.svg",
                          height: 10.h,
                          width: 6.w,
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Favorites",
                              style: poppinsRegular.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 15.sp,
                                color: AppColors.text1Color,
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text(
                              "Friends you love",
                              style: poppinsRegular.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: AppColors.text10Color,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 36.w,
                      width: 36.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60.r),
                          border: Border.all(
                            width: 2,
                            color: AppColors.text3Color,
                          )),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/image/arrow.svg",
                          height: 10.h,
                          width: 6.w,
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              InkWell(
                highlightColor: AppColors.whiteColor,
                onTap: (){
                  Get.toNamed(RouterName.phonebook);

                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Phonebook",
                                style: poppinsRegular.copyWith(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.sp,
                                  color: AppColors.text1Color,
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                "Search from your phonebook",
                                style: poppinsRegular.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: AppColors.text10Color,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 36.w,
                        width: 36.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60.r),
                            border: Border.all(
                              width: 2,
                              color: AppColors.text3Color,
                            )),
                        child: Center(
                          child: SvgPicture.asset(
                            "assets/image/arrow.svg",
                            height: 10.h,
                            width: 6.w,
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 56.h,
              ),
              InkWell(
                highlightColor: AppColors.whiteColor,
                onTap: (){
                  Get.toNamed(RouterName.signing);

                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 25.w),
                  height: 58.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: AppColors.text22Color,
                    border: Border.all(
                      color: AppColors.text21Color,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Logout",
                      style: poppinsMedium.copyWith(
                        color: AppColors.text21Color,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 26.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
