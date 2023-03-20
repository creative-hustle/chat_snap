import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/base/base_view_view_model.dart';
import 'package:social_media_app/res/app_colors.dart';
import 'package:social_media_app/res/style.dart';
import 'package:social_media_app/router/router_name.dart';
import 'package:social_media_app/screen/home/home_binding.dart';

class HomeScreen extends BaseView<HomeController> {
  const HomeScreen({super.key});

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
                      Get.toNamed(RouterName.menu);
                    },
                    child: Container(
                      width: 45.w,
                      height: 45.w,
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
                          "assets/image/menu_ic.png",
                          height: 15.w,
                          width: 15.w,
                        ),
                      ),
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
              height: 10.h,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: controller.timeData.length,
                itemBuilder: (context, index) {
                  String profile = controller.timeData[index]["profile"];
                  String name = controller.timeData[index]["name"];
                  String time = controller.timeData[index]["time"];
                  String image = controller.timeData[index]["image"];
                  String text = controller.timeData[index]["text"];
                  String share = controller.timeData[index]["share"];
                  String like = controller.timeData[index]["like"];
                  String comment = controller.timeData[index]["comment"];
                  bool follow = controller.timeData[index]["follow"];

                  return Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: InkWell(
                          highlightColor: AppColors.whiteColor,
                          onTap: (){
                            Get.toNamed(RouterName.profile);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    profile,
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
                                      Text(
                                        name,
                                        style: poppinsRegular.copyWith(
                                          fontSize: 15.sp,
                                          color: AppColors.text9Color,
                                          fontWeight: FontWeight.w500,
                                        ),
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
                              follow
                                  ? Container(
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
                                    )
                                  : Container(
                                      width: 83.w,
                                      height: 33.h,
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
                                            color: AppColors.text1Color,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      if (image != null && image.isNotEmpty)
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(RouterName.comment);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.w),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.r),
                              child: Image.asset(
                                image,
                                height: 271.h,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          ),
                        ),
                      SizedBox(
                        height: 21.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25.w, right: 28.w),
                        child: Text(
                          text,
                          style: poppinsRegular.copyWith(
                            fontSize: 12.sp,
                            color: AppColors.text10Color,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/image/share_post.png",
                                  height: 15.h,
                                  width: 17.w,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                Text(
                                  share,
                                  style: poppinsRegular.copyWith(
                                    fontSize: 12.sp,
                                    color: AppColors.text1Color,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/image/like_post.png",
                                      height: 16.h,
                                      width: 18.w,
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Text(
                                      like,
                                      style: poppinsRegular.copyWith(
                                        fontSize: 12.sp,
                                        color: AppColors.text1Color,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 23.w,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed(RouterName.comment);
                                  },
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/image/comment_post.png",
                                        height: 16.h,
                                        width: 17.w,
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Text(
                                        comment,
                                        style: poppinsRegular.copyWith(
                                          fontSize: 12.sp,
                                          color: AppColors.text1Color,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Container(
                        height: 1.h,
                        width: double.infinity,
                        color: AppColors.text3Color,
                      ),
                      SizedBox(
                        height: 20.h,
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
