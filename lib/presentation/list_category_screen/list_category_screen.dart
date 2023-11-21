import 'controller/list_category_controller.dart';
import 'package:ahmed_s_application2/core/app_export.dart';
import 'package:ahmed_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:ahmed_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:ahmed_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ListCategoryScreen extends GetWidget<ListCategoryController> {
  const ListCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildCategoryOption(
                              bikiniIcon: ImageConstant.imgArrowLeftPrimary,
                              bikini: "lbl_shirt".tr,
                              onTapBikiniIcon: () {
                                onTapArrowLeft1();
                              }),
                          _buildCategoryOption(
                              bikiniIcon: ImageConstant.imgBikiniIcon,
                              bikini: "lbl_bikini".tr),
                          _buildCategoryOption(
                              bikiniIcon: ImageConstant.imgClock,
                              bikini: "lbl_dress".tr),
                          _buildCategoryOption(
                              bikiniIcon: ImageConstant.imgManWorkEquipment,
                              bikini: "lbl_work_equipment".tr),
                          _buildCategoryOption(
                              bikiniIcon: ImageConstant.imgTrash,
                              bikini: "lbl_man_pants".tr),
                          _buildCategoryOption(
                              bikiniIcon: ImageConstant.imgTicket,
                              bikini: "lbl_man_shoes".tr),
                          _buildCategoryOption(
                              bikiniIcon: ImageConstant.imgForward,
                              bikini: "lbl_man_underwear".tr),
                          _buildCategoryOption(
                              bikiniIcon: ImageConstant.imgAirplane,
                              bikini: "lbl_man_t_shirt".tr),
                          _buildCategoryOption(
                              bikiniIcon: ImageConstant.imgTrashPrimary,
                              bikini: "lbl_woman_bag".tr),
                          _buildCategoryOption(
                              bikiniIcon: ImageConstant.imgWomanPantsIcon,
                              bikini: "lbl_woman_pants".tr),
                          _buildCategoryOption(
                              bikiniIcon: ImageConstant.imgWomanShoesIcon,
                              bikini: "lbl_high_heels".tr)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlueGray300,
            margin: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitle(
            text: "lbl_category".tr, margin: EdgeInsets.only(left: 12.h)));
  }

  /// Common widget
  Widget _buildCategoryOption({
    required String bikiniIcon,
    required String bikini,
    Function? onTapBikiniIcon,
  }) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: bikiniIcon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              onTap: () {
                onTapBikiniIcon!.call();
              }),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 3.v),
              child: Text(bikini,
                  style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onPrimary.withOpacity(1))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the previous screen.
  onTapArrowLeft1() {
    Get.back();
  }
}
