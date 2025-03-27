import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/banner/banner_bloc.dart';
import 'package:demand/presentation/components/components.dart';

import 'package:demand/presentation/route/app_route.dart';
import 'package:demand/presentation/style/theme/theme.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AdsList extends StatelessWidget {
  final CustomColorSet colors;
  final RefreshController controller;
  final VoidCallback onLoading;

  const AdsList(
      {super.key,
      required this.colors,
      required this.controller,
      required this.onLoading});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerBloc, BannerState>(
      builder: (context, state) {
        return state.adsBanners.isNotEmpty
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.verticalSpace,
                  SizedBox(
                    height: 180.r,
                    child: SmartRefresher(
                      enablePullUp: true,
                      enablePullDown: false,
                      controller: controller,
                      scrollDirection: Axis.horizontal,
                      onLoading: onLoading,
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 16.r),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: state.adsBanners.length,
                        itemBuilder: (context, index) {
                          return _itemBanner(context, state, index);
                        },
                      ),
                    ),
                  )
                ],
              )
            : const SizedBox.shrink();
      },
    );
  }

  Padding _itemBanner(BuildContext context, BannerState state, int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.r),
      child: ButtonEffectAnimation(
        onTap: () {
          AppRoute.goAdsBottomSheet(context, state.adsBanners[index], colors);
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: colors.icon),
              borderRadius: BorderRadius.circular(24.r)),
          child: CustomNetworkImage(
              url: state.adsBanners[index].galleries?.first.path ?? "",
              preview: state.adsBanners[index].galleries?.first.preview,
              height: double.infinity,
              width: MediaQuery.sizeOf(context).width - 96,
              radius: 24),
        ),
      ),
    );
  }
}
