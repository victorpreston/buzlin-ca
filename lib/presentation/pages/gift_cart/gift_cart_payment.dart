import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/gift_cart/gift_cart_bloc.dart';
import 'package:demand/domain/model/response/gift_cart_response.dart';
import 'package:demand/domain/model/response/payments_response.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/route/app_route_setting.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';

class GiftCartPaymentBottomSheet extends StatelessWidget {
  final CustomColorSet colors;
  final ScrollController controller;
  final GiftCartModel? model;

  const GiftCartPaymentBottomSheet({
    super.key,
    required this.colors,
    required this.controller,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      isLtr: LocalStorage.getLangLtr(),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 400,
        decoration: BoxDecoration(
          color: colors.newBoxColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24.r),
            topLeft: Radius.circular(24.r),
          ),
        ),
        padding: EdgeInsets.only(
          left: 16.r,
          right: 16.r,
        ),
        child: ListView(
          controller: controller,
          children: [
            8.verticalSpace,
            Container(
              height: 4.r,
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width / 2 - 48.r),
              decoration: BoxDecoration(
                  color: colors.icon,
                  borderRadius: BorderRadius.circular(100.r)),
            ),
            16.verticalSpace,
            Text(
              AppHelpers.getTranslation(TrKeys.payment),
              style: CustomStyle.interNoSemi(color: colors.textBlack, size: 22),
            ),
            16.verticalSpace,
            BlocBuilder<GiftCartBloc, GiftCartState>(
              builder: (context, state) {
                return state.isPaymentLoading
                    ? const Loading()
                    : ListView.builder(
                        reverse: true,
                        padding: EdgeInsets.zero,
                        itemCount: state.list?.length ?? 0,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              context.read<GiftCartBloc>().add(
                                  GiftCartEvent.selectPaymentId(
                                      id: state.list?[index].id ?? -1));
                            },
                            child: Column(
                              children: [
                                8.verticalSpace,
                                Row(
                                  children: [
                                    Icon(
                                      state.list?[index].id ==
                                              state.selectPayment
                                          ? FlutterRemix.checkbox_circle_fill
                                          : FlutterRemix
                                              .checkbox_blank_circle_line,
                                      color: state.list?[index].id ==
                                              state.selectPayment
                                          ? colors.primary
                                          : CustomStyle.black,
                                    ),
                                    10.horizontalSpace,
                                    Text(
                                      AppHelpers.getTranslation(
                                          state.list?[index].tag ?? ""),
                                      style: CustomStyle.interNormal(
                                        size: 14,
                                        color: colors.textBlack,
                                      ),
                                    )
                                  ],
                                ),
                                Divider(
                                  color: colors.newBoxColor,
                                ),
                                8.verticalSpace
                              ],
                            ),
                          );
                        });
              },
            ),
            16.verticalSpace,
            BlocBuilder<GiftCartBloc, GiftCartState>(
              builder: (context, state) {
                return CustomButton(
                    isLoading: state.isButtonLoading,
                    title: AppHelpers.getTranslation(TrKeys.confirm),
                    bgColor: colors.primary,
                    titleColor: colors.textWhite,
                    onTap: () {
                      final payment = state.list?.firstWhere(
                          (element) => element.id == state.selectPayment,
                          orElse: () => PaymentData());
                      final num wallet =
                          LocalStorage.getUser().wallet?.price ?? 0;
                      if (payment?.tag == TrKeys.wallet &&
                          wallet < (model?.price ?? 0)) {
                        AppHelpers.errorSnackBar(
                          context: context,
                          message: AppHelpers.getTranslation(TrKeys.notEnoughMoney),
                        );
                        return;
                      }
                      if (payment?.tag == TrKeys.wallet) {
                        context
                            .read<GiftCartBloc>()
                            .add(GiftCartEvent.createTransaction(
                                context: context,
                                giftCartId: model?.id ?? 0,
                                onSuccess: () {
                                  Navigator.popUntil(context, (route) {
                                    return route.isFirst;
                                  });
                                  AppRouteSetting.goMyGiftCart(
                                      context: context);
                                }));
                        return;
                      }
                      context
                          .read<GiftCartBloc>()
                          .add(GiftCartEvent.fetchWebView(
                              context: context,
                              giftCartId: model?.id ?? 0,
                              onSuccess: () {
                                Navigator.popUntil(context, (route) {
                                  return route.isFirst;
                                });
                                AppRouteSetting.goMyGiftCart(context: context);
                              }));
                    });
              },
            ),
            16.verticalSpace,
          ],
        ),
      ),
    );
  }
}
