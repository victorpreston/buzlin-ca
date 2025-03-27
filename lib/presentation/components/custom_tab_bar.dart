import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme_wrapper.dart';

class CustomTabBar extends StatelessWidget {
  final bool isScrollable;
  final TabController tabController;
  final List<Tab> tabs;

  const CustomTabBar(
      {super.key,
      required this.tabController,
      required this.tabs,
      this.isScrollable = false});

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (colors, controller) {
      return Container(
        padding: EdgeInsets.all(4.r),
        height: 50.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: colors.icon)),
        child: TabBar(
            isScrollable: isScrollable,
            controller: tabController,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: colors.textBlack),
            labelColor: colors.textWhite,
            unselectedLabelColor: colors.textBlack,
            unselectedLabelStyle: CustomStyle.interNoSemi(
              size: 14.sp,
              color: colors.textBlack,
            ),
            labelStyle: CustomStyle.interSemi(
              size: 14.sp,
              color: colors.textBlack,
            ),
            tabs: tabs),
      );
    });
  }
}
