import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/products/product_bloc.dart';
import 'package:demand/presentation/components/components.dart';

import 'package:demand/presentation/style/theme/theme.dart';

class MostProductTwoList extends StatelessWidget {
  final CustomColorSet colors;

  const MostProductTwoList({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return state.mostSaleProduct.isNotEmpty || state.isLoadingMostSale
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding:
                          EdgeInsets.only(right: 16.r, left: 16.r, top: 16.r),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 0.8.r,
                          crossAxisCount: 2,
                          mainAxisExtent: 280.r),
                      itemCount: state.mostSaleProduct.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.r),
                          child: ProductItem(
                            product: state.mostSaleProduct[index],
                            height: 180,
                          ),
                        );
                      })
                ],
              )
            : const SizedBox.shrink();
      },
    );
  }
}
