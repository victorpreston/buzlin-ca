import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/domain/model/model/order_model.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';

class PriceInfo extends StatelessWidget {
  final CustomColorSet colors;
  final OrderShops? order;

  const PriceInfo({super.key, required this.colors, required this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        priceItem(title: TrKeys.productsSubtotal, price: order?.originPrice),
        if (order?.serviceFee != 0 && order?.serviceFee != null)
          priceItem(title: TrKeys.serviceFee, price: order?.serviceFee),
        if (order?.tips != 0 && order?.tips != null)
          priceItem(title: TrKeys.deliveryTip, price: order?.tips),
        if (order?.deliveryFee != 0 && order?.deliveryFee != null)
          priceItem(title: TrKeys.deliveryFee, price: order?.deliveryFee),
        if (order?.tax != 0 && order?.tax != null)
          priceItem(title: TrKeys.totalTax, price: order?.tax),
        if (order?.totalCouponPrice != 0 && order?.totalCouponPrice != null)
          priceItem(
              title: TrKeys.coupon,
              price: order?.totalCouponPrice,
              discount: true),
        if (order?.totalDiscount != 0 && order?.totalDiscount != null)
          priceItem(
              title: TrKeys.discount,
              price: order?.totalDiscount,
              discount: true),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Divider(
            color: colors.textHint,
          ),
        ),
        16.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppHelpers.getTranslation(TrKeys.total),
                style: CustomStyle.interBold(color: colors.textBlack, size: 14),
              ),
              Text(
                AppHelpers.numberFormat(
                    number:
                        (order?.totalPrice ?? 0) > 0 ? order?.totalPrice : 0),
                style: CustomStyle.interBold(color: colors.textBlack, size: 14),
              ),
            ],
          ),
        ),
        24.verticalSpace,
      ],
    );
  }

  Column priceItem(
      {required num? price, required String title, bool discount = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        16.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppHelpers.getTranslation(title),
                style:
                    CustomStyle.interRegular(color: colors.textBlack, size: 14),
              ),
              Text(
                discount
                    ? "-${AppHelpers.numberFormat(number: price)} "
                    : AppHelpers.numberFormat(number: price),
                style: CustomStyle.interRegular(
                    color: discount ? colors.primary : colors.textBlack,
                    size: 14),
              ),
            ],
          ),
        ),
        16.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: const Divider(
            color: CustomStyle.textHint,
          ),
        ),
      ],
    );
  }
}
