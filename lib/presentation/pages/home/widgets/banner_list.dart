import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/banner/banner_bloc.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/route/app_route.dart';
import 'package:demand/presentation/style/theme/theme.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerList extends StatelessWidget {
  final PageController pageController;
  final CustomColorSet colors;
  final RefreshController controller;
  final VoidCallback onLoading;

  const BannerList(
      {super.key,
      required this.pageController,
      required this.colors,
      required this.controller,
      required this.onLoading});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerBloc, BannerState>(
      builder: (context, state) {
        return Container(
          color: AppHelpers.getType() == 2
              ? colors.newBoxColor
              : colors.transparent,
          padding: EdgeInsets.symmetric(vertical: 8.r),
          child: Column(
            children: [
              TitleWidget(
                title: AppHelpers.getTranslation(TrKeys.exclusiveOffers),
                titleColor: colors.textBlack,
              ),
              12.verticalSpace,
              state.banners.isNotEmpty || state.isLoadingBanner
                  ? SizedBox(
                      height: AppHelpers.getType() == 0
                          ? 180.r
                          : AppHelpers.getType() == 1
                              ? 170.r
                              : AppHelpers.getType() == 2
                                  ? 360.r
                                  : 146.r,
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              if (state.banners.isNotEmpty)
                                Expanded(
                                  child: SmartRefresher(
                                    enablePullDown: false,
                                    enablePullUp: true,
                                    controller: controller,
                                    scrollDirection: Axis.horizontal,
                                    onLoading: onLoading,
                                    child: PageView.builder(
                                        controller: pageController,
                                        itemCount: state.banners.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return _bannerItem(
                                              context, state, index);
                                        }),
                                  ),
                                ),
                              if (state.isLoadingBanner) const BannerShimmer(),
                            ],
                          ),
                          if (state.banners.length > 2 &&
                              AppHelpers.getType() == 2)
                            Positioned(
                              bottom: 32.r,
                              left: 32.r,
                              child: SizedBox(
                                  height: 20,
                                  child: SmoothPageIndicator(
                                      controller: pageController,
                                      count: state.banners.length,
                                      effect: ScrollingDotsEffect(
                                          dotWidth: 32.r,
                                          strokeWidth: 32.r,
                                          activeDotScale: 1,
                                          dotHeight: 6.r,
                                          activeDotColor: colors.textBlack,
                                          paintStyle: PaintingStyle.fill),
                                      onDotClicked: (index) {})),
                            )
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
              6.verticalSpace,
              if (state.banners.length > 2 && AppHelpers.getType() == 0)
                SizedBox(
                    height: 20,
                    child: SmoothPageIndicator(
                        controller: pageController,
                        count: state.banners.length,
                        effect: ScrollingDotsEffect(
                            dotWidth: 6.r,
                            strokeWidth: 10.r,
                            activeDotScale: 1.7,
                            dotHeight: 6.r,
                            activeDotColor: colors.textBlack,
                            paintStyle: PaintingStyle.fill),
                        onDotClicked: (index) {}))
            ],
          ),
        );
      },
    );
  }

  Padding _bannerItem(BuildContext context, BannerState state, int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: ButtonEffectAnimation(
        onTap: () {
          AppRoute.goBannerBottomSheet(context, state.banners[index], colors);
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: colors.icon),
              borderRadius: BorderRadius.circular(
                  AppHelpers.getType() == 3 ? 16.r : 24.r)),
          child: CustomNetworkImage(
              url: state.banners[index].galleries?.first.path ?? "",
              preview: state.banners[index].galleries?.first.preview,
              height: double.infinity,
              width: double.infinity,
              radius: AppHelpers.getType() == 3 ? 16 : 24),
        ),
      ),
    );
  }
}
