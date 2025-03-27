import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/domain/model/model/product_model.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';

class ProductInfoTwo extends StatelessWidget {
  final CustomColorSet colors;
  final ProductData? product;

  const ProductInfoTwo({
    super.key,
    required this.colors,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Column(children: [
        if (product?.properties?.isNotEmpty ?? false)
          Text(
            AppHelpers.getTranslation(TrKeys.additionInformation),
            style: CustomStyle.interNoSemi(color: colors.textBlack, size: 22),
          ),
        8.verticalSpace,
        ...product?.properties
                ?.map((element) => Padding(
                      padding: EdgeInsets.only(top: 16.r),
                      child: Row(
                        children: [
                          Text(
                            element.group?.translation?.title ?? "",
                            style: CustomStyle.interRegular(
                                color: colors.textBlack, size: 16),
                          ),
                          const Spacer(),
                          Text(
                            element.value?.value ?? "",
                            style: CustomStyle.interRegular(
                                color: colors.textBlack, size: 16),
                          )
                        ],
                      ),
                    ))
                .toList() ??
            []
      ]),
    );
  }
}
