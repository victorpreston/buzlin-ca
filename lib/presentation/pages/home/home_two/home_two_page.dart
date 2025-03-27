import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:demand/application/banner/banner_bloc.dart';
import 'package:demand/application/blog/blog_bloc.dart';
import 'package:demand/application/brand/brand_bloc.dart';
import 'package:demand/application/category/category_bloc.dart';
import 'package:demand/application/main/main_bloc.dart';
import 'package:demand/application/master/master_bloc.dart';
import 'package:demand/application/notification/notification_bloc.dart';
import 'package:demand/application/products/product_bloc.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'package:demand/presentation/pages/home/home_three/widgets/story_three_list.dart';
import 'package:demand/presentation/pages/home/widgets/all_shop_list.dart';
import 'package:demand/presentation/pages/home/widgets/masters_list.dart';
import 'package:demand/presentation/pages/home/widgets/popular_shop.dart';
import 'package:demand/presentation/route/app_route.dart';
import 'package:demand/presentation/route/app_route_setting.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:demand/presentation/pages/buzreels/buzreels_page.dart';

import 'widgets/category_two_list.dart';
import 'widgets/upcoming_two_list.dart';

class HomeTwoPage extends StatefulWidget {
  const HomeTwoPage({super.key});

  @override
  State<HomeTwoPage> createState() => _HomeTwoPageState();
}

class _HomeTwoPageState extends State<HomeTwoPage> {
  late RefreshController categoryRefresh;
  late RefreshController masterRefresh;
  late RefreshController productRefresh;
  late RefreshController storyRefresh;
  late RefreshController adsRefresh;
  late RefreshController bannerRefresh;
  late ScrollController scrollController;
  late PageController pageController;

  void listen() {
    final direction = scrollController.position.userScrollDirection;
    if (direction == ScrollDirection.reverse) {
      context.read<MainBloc>().add(const MainEvent.showSearch(value: false));
    } else if (direction == ScrollDirection.forward) {
      context.read<MainBloc>().add(const MainEvent.showSearch(value: true));
    }
  }

  @override
  void initState() {
    categoryRefresh = RefreshController();
    productRefresh = RefreshController();
    storyRefresh = RefreshController();
    adsRefresh = RefreshController();
    bannerRefresh = RefreshController();
    masterRefresh = RefreshController();
    pageController = PageController();
    scrollController = ScrollController();
    scrollController.addListener(listen);
    super.initState();
  }

  @override
  void dispose() {
    categoryRefresh.dispose();
    productRefresh.dispose();
    pageController.dispose();
    storyRefresh.dispose();
    adsRefresh.dispose();
    masterRefresh.dispose();
    bannerRefresh.dispose();
    scrollController.removeListener(listen);
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: (colors) => _buildAppBar(colors),
      body: (colors) {
        return Column(
          children: [
            8.verticalSpace,
            BlocBuilder<MainBloc, MainState>(
              buildWhen: (p, n) {
                return p.isShowSearch != n.isShowSearch;
              },
              builder: (context, state) {
                return AnimatedContainer(
                  margin: EdgeInsets.symmetric(horizontal: 16.r),
                  duration: const Duration(milliseconds: 500),
                  height: state.isShowSearch ? 50.r : 0,
                  child: state.isShowSearch
                      ? CustomTextFormField(
                          onTap: () {
                            AppRoute.goSearchPage(context: context);
                          },
                          readOnly: true,
                          radius: 24,
                          prefixIcon: const Icon(
                            FlutterRemix.search_2_line,
                            color: CustomStyle.textHint,
                          ),
                          hint: AppHelpers.getTranslation(TrKeys.search),
                        )
                      : const SizedBox.shrink(),
                );
              },
            ),
            Expanded(
              child: SmartRefresher(
                scrollController: scrollController,
                controller: productRefresh,
                enablePullUp: true,
                onRefresh: () {
                  context.read<CategoryBloc>().add(CategoryEvent.fetchCategory(
                      context: context,
                      isRefresh: true,
                      controller: productRefresh));
                  context.read<ProductBloc>()
                    ..add(ProductEvent.fetchMostSaleProduct(
                        context: context,
                        isRefresh: true,
                        controller: productRefresh))
                    ..add(ProductEvent.fetchNewProduct(
                        context: context,
                        isRefresh: true,
                        controller: productRefresh))
                    ..add(ProductEvent.fetchAllProduct(
                        context: context,
                        isRefresh: true,
                        controller: productRefresh));
                  context.read<BlogBloc>().add(BlogEvent.fetchBlog(
                      context: context,
                      isRefresh: true,
                      controller: productRefresh));
                  context.read<BannerBloc>()
                    ..add(BannerEvent.fetchBanner(
                        context: context,
                        isRefresh: true,
                        controller: productRefresh))
                    ..add(BannerEvent.fetchLooks(
                        context: context,
                        isRefresh: true,
                        controller: productRefresh))
                    ..add(BannerEvent.fetchAdsBanner(
                        context: context,
                        isRefresh: true,
                        controller: productRefresh))
                    ..add(BannerEvent.fetchAdsListProduct(
                        context: context, isRefresh: true));
                  context.read<BrandBloc>().add(BrandEvent.fetchBrands(
                      context: context,
                      isRefresh: true,
                      controller: productRefresh));
                  productRefresh.resetNoData();
                },
                onLoading: () {
                  context.read<ProductBloc>().add(ProductEvent.fetchAllProduct(
                      context: context, controller: productRefresh));
                  context.read<BannerBloc>().add(
                      BannerEvent.fetchAdsListProduct(
                          context: context, controller: productRefresh));
                },
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 16.r),
                  controller: scrollController,
                  children: [
                    UpComingTwoList(colors: colors),
                    16.verticalSpace,
                    CategoryTwoList(
                        categoryRefresh: categoryRefresh, colors: colors),
                    ShopsPopularList(colors: colors),
                    16.verticalSpace,
                    StoryThreeList(storyRefresh: storyRefresh, colors: colors),
                    MastersList(
                      colors: colors,
                      controller: masterRefresh,
                      onLoading: () {
                        context.read<MasterBloc>().add(MasterEvent.fetchMasters(
                            context: context, controller: masterRefresh));
                      },
                    ),
                    AllShopList(colors: colors),
                    80.verticalSpace,
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  AppBar _buildAppBar(CustomColorSet colors) {
    return AppBar(
      backgroundColor: colors.backgroundColor,
      elevation: 0.0,
      centerTitle: false,
      actions: [
        
            IconButton(
              onPressed: () {
                if (LocalStorage.getToken().isEmpty) {
                  AppRoute.goLogin(context);
                  return;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BuzReelsPage()),
                );
              },
              icon: SvgPicture.string(
                '''
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor">
                  <path d="M20.7134 8.12811L20.4668 8.69379C20.2864 9.10792 19.7136 9.10792 19.5331 8.69379L19.2866 8.12811C18.8471 7.11947 18.0555 6.31641 17.0677 5.87708L16.308 5.53922C15.8973 5.35653 15.8973 4.75881 16.308 4.57612L17.0252 4.25714C18.0384 3.80651 18.8442 2.97373 19.2761 1.93083L19.5293 1.31953C19.7058 0.893489 20.2942 0.893489 20.4706 1.31953L20.7238 1.93083C21.1558 2.97373 21.9616 3.80651 22.9748 4.25714L23.6919 4.57612C24.1027 4.75881 24.1027 5.35653 23.6919 5.53922L22.9323 5.87708C21.9445 6.31641 21.1529 7.11947 20.7134 8.12811ZM2.9918 3H14V5H4V19H20V11H22V20.0066C22 20.5552 21.5447 21 21.0082 21H2.9918C2.44405 21 2 20.5551 2 20.0066V3.9934C2 3.44476 2.45531 3 2.9918 3ZM10.6219 8.41459L15.5008 11.6672C15.6846 11.7897 15.7343 12.0381 15.6117 12.2219C15.5824 12.2658 15.5447 12.3035 15.5008 12.3328L10.6219 15.5854C10.4381 15.708 10.1897 15.6583 10.0672 15.4745C10.0234 15.4088 10 15.3316 10 15.2526V8.74741C10 8.52649 10.1791 8.34741 10.4 8.34741C10.479 8.34741 10.5562 8.37078 10.6219 8.41459Z"></path>
                </svg>
                ''',
                height: 24.r,
                colorFilter: ColorFilter.mode(colors.textBlack, BlendMode.srcIn),
              ),
            ),
            IconButton(
            onPressed: () {
              if (LocalStorage.getToken().isEmpty) {
                AppRoute.goLogin(context);
                return;
              }
              AppRouteSetting.goNotification(context: context);
            },
            icon: Badge(
              label: (LocalStorage.getToken().isEmpty)
                  ? const Text("0")
                  : BlocBuilder<NotificationBloc, NotificationState>(
                      builder: (context, state) {
                        return Text(state.countOfNotifications?.notification
                                .toString() ??
                            "0");
                      },
                    ),
              child: SvgPicture.asset(
                "assets/svg/notification.svg",
                height: 24.r,
                colorFilter:
                    ColorFilter.mode(colors.textBlack, BlendMode.srcIn),
              ),
            ))


            
      ],
      title: Text(
        AppHelpers.getAppName(),
        style: CustomStyle.interSemi(color: colors.textBlack, size: 22),
      ),
    );
  }
}
