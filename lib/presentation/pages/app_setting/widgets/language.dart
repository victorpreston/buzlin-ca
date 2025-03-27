// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/banner/banner_bloc.dart';
import 'package:demand/application/blog/blog_bloc.dart';
import 'package:demand/application/brand/brand_bloc.dart';
import 'package:demand/application/category/category_bloc.dart';
import 'package:demand/application/products/product_bloc.dart';
import 'package:demand/application/profile/profile_bloc.dart';
import 'package:demand/application/shop/shop_bloc.dart';
import 'package:demand/application/story/story_bloc.dart';
import 'package:demand/domain/di/dependency_manager.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme_wrapper.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({
    super.key,
  });

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<ProfileBloc>()
          .add(ProfileEvent.getLanguage(context: context));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (colors, controller) {
      return KeyboardDismisser(
        isLtr: LocalStorage.getLangLtr(),
        child: BlurWrap(
          radius: BorderRadius.only(
            topRight: Radius.circular(24.r),
            topLeft: Radius.circular(24.r),
          ),
          child: Container(
            margin: MediaQuery.viewInsetsOf(context),
            width: double.infinity,
            decoration: BoxDecoration(
              color: colors.newBoxColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24.r),
                topLeft: Radius.circular(24.r),
              ),
            ),
            padding: EdgeInsets.all(16.r),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                8.verticalSpace,
                Text(
                  AppHelpers.getTranslation(TrKeys.language),
                  style: CustomStyle.interNoSemi(
                      color: colors.textBlack, size: 22),
                ),
                BlocBuilder<ProfileBloc, ProfileState>(
                  buildWhen: (p, n) {
                    return p.isLanguage != n.isLanguage;
                  },
                  builder: (context, state) {
                    return state.isLanguage
                        ? Padding(
                            padding: EdgeInsets.symmetric(vertical: 24.r),
                            child: const Loading(),
                          )
                        : ListView.builder(
                            padding: EdgeInsets.only(top: 24.r, bottom: 24.r),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: state.languages.length,
                            itemBuilder: (context, index) {
                              bool active = LocalStorage.getLanguage()?.id ==
                                  state.languages[index].id;
                              return ButtonEffectAnimation(
                                onTap: () async {
                                  LocalStorage.setLanguageData(
                                      state.languages[index]);
                                  final map =
                                      await LocalStorage.getOtherTranslations(
                                          key: state.languages[index].id
                                              .toString());

                                  await LocalStorage.setTranslations(map);

                                  controller.toggle();
                                  controller.toggle();
                                  if (context.mounted) {
                                    context
                                        .read<ProfileBloc>()
                                        .add(const ProfileEvent.updateLan());
                                    context.read<CategoryBloc>().add(
                                        CategoryEvent.fetchCategory(
                                            context: context, isRefresh: true));
                                    context.read<ProductBloc>()
                                      ..add(ProductEvent.fetchAllProduct(
                                          context: context, isRefresh: true))
                                      ..add(ProductEvent.fetchMostSaleProduct(
                                          context: context, isRefresh: true))
                                      ..add(ProductEvent.fetchNewProduct(
                                          context: context, isRefresh: true));
                                    context.read<ShopBloc>().add(
                                        ShopEvent.fetchShops(
                                            context: context, isRefresh: true));
                                    context.read<StoryBloc>().add(
                                        StoryEvent.fetchStory(
                                            context: context, isRefresh: true));
                                    context.read<BlogBloc>().add(
                                        BlogEvent.fetchBlog(
                                            context: context, isRefresh: true));
                                    context.read<BrandBloc>().add(
                                        BrandEvent.fetchBrands(
                                            context: context, isRefresh: true));
                                    context.read<BannerBloc>()
                                      ..add(BannerEvent.fetchAdsListProduct(
                                          context: context, isRefresh: true))
                                      ..add(BannerEvent.fetchAdsBanner(
                                          context: context, isRefresh: true))
                                      ..add(BannerEvent.fetchBanner(
                                          context: context, isRefresh: true))
                                      ..add(BannerEvent.fetchLooks(
                                          context: context, isRefresh: true));
                                  }
                                  if (LocalStorage.getToken().isNotEmpty) {
                                    authRepository.updateSetting();
                                    context.read<ProfileBloc>().add(
                                        ProfileEvent.fetchProfile(
                                            context: context));
                                  }
                                },
                                child: Column(
                                  children: [
                                    8.verticalSpace,
                                    Row(
                                      children: [
                                        Container(
                                          width: 18.r,
                                          height: 18.r,
                                          margin: EdgeInsets.only(right: 10.r),
                                          decoration: BoxDecoration(
                                              color: active
                                                  ? colors.primary
                                                  : colors.transparent,
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: !active
                                                      ? colors.textHint
                                                      : colors.primary)),
                                          child: Icon(
                                            FlutterRemix.check_line,
                                            color: active
                                                ? colors.white
                                                : colors.transparent,
                                            size: 16.r,
                                          ),
                                        ),
                                        Text(
                                          state.languages[index].title ?? "",
                                          style: CustomStyle.interNormal(
                                              color: colors.textBlack,
                                              size: 14),
                                        ),
                                      ],
                                    ),
                                    12.verticalSpace,
                                    Divider(
                                      color: colors.textHint,
                                    )
                                  ],
                                ),
                              );
                            });
                  },
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
