import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:social_media_app/base/base_view_view_model.dart';
import 'package:social_media_app/res/app_colors.dart';
import 'package:social_media_app/res/style.dart';
import 'package:social_media_app/screen/phonebook/phonebook_binding.dart';

class FacebookScreen extends BaseView<PhoneBookController> {
  const FacebookScreen({super.key});

  @override
  Widget vBuilder(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.r),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: controller.facebookData.length,
              itemBuilder: (context, index) {
                var data = controller.facebookData[index]["data"];
                return Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50.h,
                      padding: EdgeInsets.only(
                        top: 16.h,
                        left: 16.w,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: AppColors.text12Color,
                          border: Border.all(
                            color: AppColors.text3Color,
                            width: 1.h,
                          )),
                      child: Text(
                        controller.facebookData[index]["type"],
                        style: poppinsRegular.copyWith(
                          fontSize: 15.sp,
                          color: AppColors.text9Color,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    MasonryGridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          var image = data[index]["image"].toString();
                          var name = data[index]["name"].toString();
                          var tag = data[index]["tag"].toString();
                          return Container(
                            padding: EdgeInsets.only(top: 20.h,bottom: 20.h,left: 20.w,right: 20.w),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.text3Color),
                              borderRadius: BorderRadius.circular(8.r),
                              color: AppColors.text12Color,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(3.r),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80.r),
                                    border: Border.all(
                                      color: AppColors.text4Color,
                                    ),
                                  ),
                                  child: Image.asset(
                                    image,
                                    height: 59.w,
                                    width: 59.w,
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Text(
                                  name,
                                  style: poppinsMedium.copyWith(
                                    color: AppColors.text9Color,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  "@$tag",
                                  style: poppinsRegular.copyWith(
                                    color: AppColors.text10Color,
                                    fontSize: 12.sp,
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
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
    );
  }
}
