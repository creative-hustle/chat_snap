import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/base/base_view_view_model.dart';
import 'package:social_media_app/res/app_colors.dart';
import 'package:social_media_app/res/style.dart';
import 'package:social_media_app/screen/comment/comment_binding.dart';

class CommentScreen extends BaseView<CommentController> {
  const CommentScreen({super.key});

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/comment_img.png"),
                  fit: BoxFit.cover
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
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
                          Image.asset(
                            "assets/image/option_menu.png",
                            height: 16.h,
                            width: 4.w,
                            color: AppColors.whiteColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 22.h,
                    left: 0,
                    right: 0,
                    child: Padding(
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
                                color: AppColors.whiteColor,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "8",
                                style: poppinsRegular.copyWith(
                                  fontSize: 12.sp,
                                  color: AppColors.whiteColor,
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
                                    color: AppColors.whiteColor,
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    "186",
                                    style: poppinsRegular.copyWith(
                                      fontSize: 12.sp,
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 23.w,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/image/comment_post.png",
                                    height: 16.h,
                                    width: 17.w,
                                    color: AppColors.whiteColor,
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    "38",
                                    style: poppinsRegular.copyWith(
                                      fontSize: 12.sp,
                                      color: AppColors.whiteColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: controller.commentData.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  String image = controller.commentData[index]["image"];
                  String name = controller.commentData[index]["name"];
                  String time = controller.commentData[index]["time"];
                  bool like = controller.commentData[index]["like"];
                  String text = controller.commentData[index]["text"];
                  return Column(
                    children: [
                      SizedBox(
                        height: 11.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
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
                                  width: 16.w,
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
                           if(like) Column(
                              children: [
                                Image.asset(
                                  "assets/image/like_post.png",
                                  height: 16.w,
                                  width: 18.w,
                                  color: AppColors.text10Color,
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 23.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
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
                        height: 26.h,
                      ),
                      Container(
                        height: 1.h,
                        width: double.infinity,
                        color: AppColors.text3Color,
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
