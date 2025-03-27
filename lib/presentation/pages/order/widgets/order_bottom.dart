import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/cart/cart_bloc.dart';
import 'package:demand/application/main/main_bloc.dart';
import 'package:demand/application/order/order_bloc.dart';
import 'package:demand/application/products/product_bloc.dart';
import 'package:demand/domain/model/model/order_model.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/pages/order/widgets/send_refund_screen.dart';
import 'package:demand/presentation/style/theme/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class OrderBottom extends StatelessWidget {
  final OrderShops? order;
  final CustomColorSet colors;

  const OrderBottom({super.key, required this.order, required this.colors});

  @override
  Widget build(BuildContext context) {
    switch (order?.status) {
      case "new":
        {
          return _cancelOrder(context);
        }
      case "ready":
        {
          return order?.deliveryMan != null
              ? _callDriver(context)
              : const SizedBox.shrink();
        }
      case "on_a_way":
        {
          return order?.deliveryMan != null
              ? _callDriver(context)
              : const SizedBox.shrink();
        }
      case "delivered":
        {
          return _refundAndRepeat(context);
        }
      case "canceled":
        {
          return _refundAndRepeat(context);
        }
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _refundAndRepeat(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<CartBloc, CartState>(
          buildWhen: (p, n) {
            return p.isLoading != n.isLoading;
          },
          builder: (context, state) {
            return CustomButton(
                isLoading: state.isLoading,
                title: AppHelpers.getTranslation(TrKeys.repeatOrder),
                bgColor: colors.primary,
                titleColor: colors.white,
                onTap: () {
                  LocalStorage.deleteCartList();
                  order?.details?.forEach((e) {
                    LocalStorage.setCartList(
                        productId: e.stocks?.product?.id,
                        stockId: e.stocks?.id,
                        count: e.quantity ?? 0,
                        image: (e.galleries?.isNotEmpty ?? false)
                            ? e.galleries?.first.path ?? ""
                            : e.stocks?.product?.img ?? "");
                  });
                  context
                      .read<MainBloc>()
                      .add(const MainEvent.changeIndex(index: 4));
                  context.read<CartBloc>().add(CartEvent.insertCart(
                        context: context,
                        onSuccess: () {
                          context.read<CartBloc>().add(
                              CartEvent.calculateCartWithCoupon(
                                  context: context));
                          context
                              .read<ProductBloc>()
                              .add(const ProductEvent.updateState());

                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                      ));
                });
          },
        ),
        8.verticalSpace,
        CustomButton(
            title: AppHelpers.getTranslation(TrKeys.refund),
            bgColor: colors.textBlack,
            titleColor: colors.textWhite,
            onTap: () {
              if (order?.refunds?.isNotEmpty ?? false) {
                AppHelpers.openDialog(
                    context: context,
                    title: AppHelpers.getTranslation(
                        TrKeys.youHaveAlreadyUsedTheRefundMethodForThisOrder));
                return;
              }
              AppHelpers.showCustomDialog(
                  context: context,
                  content: BlocProvider.value(
                    value: context.read<OrderBloc>(),
                    child: SendRefundScreen(
                      colors: colors,
                      orderId: order?.id ?? 0,
                    ),
                  ));
            }),
      ],
    );
  }

  Widget _callDriver(BuildContext context) {
    return CustomButton(
      title: AppHelpers.getTranslation(TrKeys.cancelOrder),
      bgColor: colors.primary,
      titleColor: colors.white,
      onTap: () {
        if (order?.deliveryMan?.phone != null) {
          try {
            final Uri launchUri = Uri(
              scheme: 'tel',
              path: order?.deliveryMan?.phone,
            );
            launchUrl(launchUri);
          } catch (e) {
            AppHelpers.openDialog(context: context, title: e.toString());
          }
          return;
        }
        AppHelpers.openDialog(
            context: context,
            title: AppHelpers.getTranslation(TrKeys.thisDriverDontEnterContact));
      },
    );
  }

  Widget _cancelOrder(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        return CustomButton(
            isLoading: state.isButtonLoading,
            title: AppHelpers.getTranslation(TrKeys.cancelOrder),
            bgColor: colors.primary,
            titleColor: colors.white,
            onTap: () {
              context.read<OrderBloc>().add(
                    OrderEvent.cancelOrder(
                      context: context,
                      id: order?.id ?? 0,
                      onSuccess: () {
                        Navigator.pop(context);
                        context.read<OrderBloc>().add(
                            OrderEvent.fetchActiveOrders(
                                context: context, isRefresh: true));
                      },
                    ),
                  );
            });
      },
    );
  }
}
