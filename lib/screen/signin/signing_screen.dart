import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_media_app/base/base_view_view_model.dart';
import 'package:social_media_app/res/app_colors.dart';
import 'package:social_media_app/res/style.dart';
import 'package:social_media_app/router/router_name.dart';
import 'package:social_media_app/screen/signin/signing_binding.dart';

class SigningScreen extends BaseView<SigningController> {
  const SigningScreen({super.key});

  @override
  Widget vBuilder(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 26.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
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
                      "assets/image/back.png",
                      height: 10.h,
                      width: 20.w,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 37.h,
              ),
              Center(
                child: Text(
                  "Hello Again!",
                  style: poppinsRegular.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 40.sp,
                    color: AppColors.text1Color,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Sign in to your account",
                  style: poppinsRegular.copyWith(
                    // fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: AppColors.text2Color,
                  ),
                ),
              ),
              SizedBox(
                height: 42.h,
              ),
              TextField(
                cursorColor: AppColors.text4Color,
                maxLines: 1,
                decoration: InputDecoration(
                  labelText: 'Email address',
                  labelStyle: poppinsRegular.copyWith(
                      fontSize: 14.sp, color: AppColors.text5Color),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: AppColors.text3Color,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: AppColors.text4Color,
                      )),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              TextField(
                cursorColor: AppColors.text4Color,
                maxLines: 1,
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                  labelStyle: poppinsRegular.copyWith(
                      fontSize: 14.sp, color: AppColors.text5Color),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: AppColors.text3Color,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: AppColors.text4Color,
                      )),
                ),
              ),
              SizedBox(
                height: 19.h,
              ),
              Text(
                "Forgot your password?",
                style: poppinsRegular.copyWith(
                  fontSize: 14.sp,
                  color: AppColors.text4Color,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(
                height: 44.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouterName.home);
                },
                child: Container(
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
                      "Sign in",
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
                height: 27.h,
              ),
              Row(
                children: [
                  const Expanded(
                    child: DottedLine(
                      dashColor: AppColors.text6Color,
                    ),
                  ),
                  SizedBox(
                    width: 13.w,
                  ),
                  Text(
                    "Or with",
                    style: poppinsRegular.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.text7Color,
                    ),
                  ),
                  SizedBox(
                    width: 13.w,
                  ),
                  const Expanded(
                    child: DottedLine(
                      dashColor: AppColors.text6Color,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14.h,
              ),
              Container(
                width: double.infinity,
                height: 58.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      color: AppColors.text3Color,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/image/google.svg',
                      height: 20.w,
                      width: 20.w,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      "Sign in with Google",
                      style: poppinsMedium.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.text8Color,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: double.infinity,
                height: 58.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      color: AppColors.text3Color,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/image/twitter.svg',
                      height: 20.w,
                      width: 20.w,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      "Sign in with Twitter",
                      style: poppinsMedium.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.text8Color,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Don't have account? Let's ",
                    style: poppinsRegular.copyWith(
                      fontSize: 12.sp,
                      color: AppColors.text7Color,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign up',
                        style: poppinsRegular.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.text4Color,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
