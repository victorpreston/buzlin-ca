import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/products/product_bloc.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/route/app_route.dart';
import 'package:demand/presentation/style/theme/theme.dart';

class MostShopTwoProductList extends StatelessWidget {
  final CustomColorSet colors;
  final int shopId;

  const MostShopTwoProductList(
      {super.key, required this.colors, required this.shopId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return state.mostSaleShopProduct.isNotEmpty || state.isLoadingMostSale
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  32.verticalSpace,
                  TitleWidget(
                    isSale: true,
                    title: AppHelpers.getTranslation(TrKeys.mostSales),
                    titleColor: colors.textBlack,
                    subTitle: AppHelpers.getTranslation(TrKeys.seeAll),
                    onTap: () async {
                      await AppRoute.goProductList(
                          context: context,
                          list: state.mostSaleShopProduct,
                          title: AppHelpers.getTranslation(TrKeys.mostSales),
                          isNewProduct: false,
                          isMostSaleProduct: true,
                          shopId: shopId);
                      if (context.mounted) {
                        context
                            .read<ProductBloc>()
                            .add(const ProductEvent.updateState());
                      }
                    },
                  ),
                  16.verticalSpace,
                  !state.isLoadingMostSale
                      ? ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 16.r),
                          shrinkWrap: true,
                          itemCount: state.mostSaleShopProduct.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 8.r),
                              child: OneProductItem(
                                height: 360,
                                product: state.mostSaleShopProduct[index],
                              ),
                            );
                          })
                      : const ProductsShimmer()
                ],
              )
            : const SizedBox.shrink();
      },
    );
  }
}
