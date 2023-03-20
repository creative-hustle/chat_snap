import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/base/base_view_view_model.dart';
import 'package:social_media_app/res/app_colors.dart';
import 'package:social_media_app/res/style.dart';
import 'package:social_media_app/router/router_name.dart';
import 'package:social_media_app/screen/notification/notification_binding.dart';

class NotificationScreen extends BaseView<NotificationController> {
  const NotificationScreen({super.key});

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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Notification",
                          style: poppinsRegular.copyWith(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.text9Color,
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Container(
              height: 1.h,
              width: double.infinity,
              color: AppColors.text3Color,
            ),
            SizedBox(
              height: 21.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Show all",
                    style: poppinsRegular.copyWith(
                      color: AppColors.text17Color,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                    ),
                  ),
                  Text(
                    "Mark all us read",
                    style: poppinsRegular.copyWith(
                      color: AppColors.text18Color,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 18.h,
            ),


            Expanded(
              child: ListView.builder(
                itemCount: controller.notificationData.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(bottom: 22.h),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  String image = controller.notificationData[index]["image"];
                  String name = controller.notificationData[index]["name"];
                  String post = controller.notificationData[index]["post"];
                  String time = controller.notificationData[index]["time"];

                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w,vertical: 8.h),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 14.w,vertical: 15.h),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: AppColors.text3Color,
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          highlightColor: AppColors.whiteColor,
                          onTap: (){
                            Get.toNamed(RouterName.profile);
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                image,
                                height: 50.w,
                                width: 50.w,
                              ),
                              SizedBox(
                                width: 16.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        name,
                                        style: poppinsRegular.copyWith(
                                          fontSize: 12.sp,
                                          color: AppColors.text9Color,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Text(
                                        post,
                                        style: poppinsRegular.copyWith(
                                          fontSize: 12.sp,
                                          color: AppColors.text19Color,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Text(
                                    time,
                                    style: poppinsRegular.copyWith(
                                      fontSize: 12.sp,
                                      color: AppColors.text10Color,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },),
            ),
          ],
        ),
      ),
    );
  }
}
