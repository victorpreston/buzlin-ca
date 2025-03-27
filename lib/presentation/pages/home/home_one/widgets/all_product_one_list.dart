import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/banner/banner_bloc.dart';
import 'package:demand/application/products/product_bloc.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/presentation/components/components.dart';

import 'package:demand/presentation/style/theme/theme.dart';

import 'ads_one_item.dart';

class AllProductOneList extends StatelessWidget {
  final CustomColorSet colors;

  const AllProductOneList({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        8.verticalSpace,
        BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return BlocBuilder<BannerBloc, BannerState>(
              builder: (context, stateBanner) {
                return ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: (state.allProductList.length / 6).ceil(),
                  itemBuilder: (BuildContext context, int addAdsIndex) {
                    return Column(
                      children: [
                        if (stateBanner.shopListAds.length > addAdsIndex &&
                            stateBanner.shopListAds.isNotEmpty)
                          AdsOneItem(
                            colors: colors,
                            colorIndex: addAdsIndex % 6,
                            banner: stateBanner.shopListAds[addAdsIndex],
                            bannerProducts: stateBanner
                                    .shopListAds[addAdsIndex].shopAdsPackages ??
                                [],
                          ),
                        GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.only(
                                right: 16.r, left: 16.r, top: 16.r),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 0.8.r,
                                    crossAxisCount: 2,
                                    mainAxisExtent: 330.r),
                            itemCount: (state.allProductList.length -
                                        addAdsIndex * 6) >
                                    6
                                ? 6
                                : (state.allProductList.length -
                                    addAdsIndex * 6),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4.r),
                                child: ProductItem(
                                    height:
                                        AppHelpers.getType() == 1 ? 224 : 260,
                                    product: state.allProductList[
                                        index + addAdsIndex * 6]),
                              );
                            }),
                      ],
                    );
                  },
                );
              },
            );
          },
        ),
      ],
    );
  }
}
