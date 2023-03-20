import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media_app/base/base_view_view_model.dart';
import 'package:social_media_app/res/app_colors.dart';
import 'package:social_media_app/res/style.dart';
import 'package:social_media_app/screen/message/message_binding.dart';
import 'package:social_media_app/screen/widget/custome_textfield.dart';

class MessageScreen extends BaseView<MessageController> {
  const MessageScreen({super.key});

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(25.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                          SizedBox(
                            width: 20.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 14.w,
                                    width: 14.w,
                                    decoration: BoxDecoration(
                                      color: AppColors.text15Color,
                                      borderRadius:
                                          BorderRadius.circular(100.r),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.w,
                                  ),
                                  Text(
                                    "graphic-resources.com",
                                    style: poppinsMedium.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.text9Color),
                                  ),
                                ],
                              ),
                              Text(
                                "Last active: 10 sec ago",
                                style: poppinsRegular.copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.text10Color),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: AppColors.boxShadowColor,
                              blurRadius: 8.r,
                              offset: const Offset(0.0, 5.0))
                        ]),
                        child: Image.asset(
                          "assets/image/phone.png",
                          height: 42.w,
                          width: 42.w,
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
                Expanded(
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              right: 25.w,
                              left: 25.w,
                              top: 30.h,
                              bottom: 60.h,
                            ),
                            color: AppColors.listBgColor,
                            child: ListView.builder(
                              shrinkWrap: true,
                              reverse: true,
                              physics: const BouncingScrollPhysics(),
                              itemCount: controller.msgData.length,
                              itemBuilder: (context, index) {
                                var image = controller.msgData[index]["image"];
                                var author =
                                    controller.msgData[index]["author"];
                                var msg = controller.msgData[index]["msg"];

                                var showImage = true;

                                if (index != controller.msgData.length - 1 &&
                                    controller.msgData[index + 1]["author"] ==
                                        author) {
                                  showImage = false;
                                }

                                return author == "0"
                                    ? Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              showImage
                                                  ? Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    100.r),
                                                        border: Border.all(
                                                          color: AppColors
                                                              .whiteColor,
                                                          width: 3.sp,
                                                        ),
                                                      ),
                                                      child: Image.asset(
                                                        image,
                                                        height: 50.w,
                                                        width: 50.w,
                                                      ),
                                                    )
                                                  : SizedBox(
                                                      height: 50.w,
                                                      width: 60.w,
                                                    ),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                        horizontal: 15.w,
                                                        vertical: 10.h,
                                                      ),
                                                      margin: EdgeInsets.only(
                                                          right: 30.w,
                                                          bottom: 12.h),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10.r),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  10.r),
                                                          topRight:
                                                              Radius.circular(
                                                                  10.r),
                                                        ),
                                                        color: AppColors
                                                            .whiteColor,
                                                        border: Border.all(
                                                          color: AppColors
                                                              .text3Color,
                                                        ),
                                                      ),
                                                      child: Text(
                                                        msg,
                                                        style: poppinsRegular
                                                            .copyWith(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          overflow: TextOverflow
                                                              .visible,
                                                          fontSize: 12.sp,
                                                          color: AppColors.text20Color,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (showImage == false)
                                            SizedBox(
                                              height: 38.h,
                                            ),
                                          if (controller.msgData[index]
                                                  ["only"] ==
                                              true)
                                            SizedBox(
                                              height: 38.h,
                                            )
                                        ],
                                      )
                                    : Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 15.w,
                                                    vertical: 10.h,
                                                  ),
                                                  margin: EdgeInsets.only(
                                                      left: 30.w, bottom: 12.h),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(10.r),
                                                      bottomRight:
                                                          Radius.circular(10.r),
                                                      topLeft:
                                                          Radius.circular(10.r),
                                                    ),
                                                    color: AppColors.whiteColor,
                                                    border: Border.all(
                                                      color:
                                                          AppColors.text3Color,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    msg,
                                                    style:
                                                        poppinsRegular.copyWith(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      overflow:
                                                          TextOverflow.visible,
                                                      fontSize: 12.sp,
                                                          color: AppColors.text20Color,
                                                    ),

                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              showImage
                                                  ? Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    100.r),
                                                        border: Border.all(
                                                          color: AppColors
                                                              .whiteColor,
                                                          width: 3.sp,
                                                        ),
                                                      ),
                                                      child: Image.asset(
                                                        image,
                                                        height: 50.w,
                                                        width: 50.w,
                                                      ),
                                                    )
                                                  : SizedBox(
                                                      height: 50.w,
                                                      width: 60.w,
                                                    ),
                                            ],
                                          ),
                                          if (showImage == false)
                                            SizedBox(
                                              height: 38.h,
                                            ),
                                          if (controller.msgData[index]
                                                  ["only"] ==
                                              true)
                                            SizedBox(
                                              height: 38.h,
                                            )
                                        ],
                                      );
                              },
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            Container(
                              height: 1.h,
                              width: double.infinity,
                              color: AppColors.text3Color,
                            ),
                            Container(
                              height: 98.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25.w, vertical: 20.h),
                              width: double.infinity,
                              color: AppColors.whiteColor,
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Container(
                                      height: 52.h,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.w),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        border: Border.all(
                                          color: AppColors.text3Color,
                                        ),
                                      ),
                                      child: CustomeTextfield(
                                        hint: 'Say something',
                                        controller: controller.msg,
                                        isPasswordField: false,
                                        customMaxLine: 1,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.msg.clear();
                                      FocusScope.of(context).unfocus();
                                    },
                                    child: Image.asset(
                                      "assets/image/send_msg.png",
                                      height: 52.w,
                                      width: 52.w,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
