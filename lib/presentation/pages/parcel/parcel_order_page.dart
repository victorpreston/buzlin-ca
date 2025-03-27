import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/parcel/parcel_bloc.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/pages/order/widgets/deliveryman_widget.dart';
import 'package:demand/presentation/pages/order/widgets/location_widget.dart';
import 'package:demand/presentation/pages/order/widgets/order_status.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';

import 'widgets/parcel_title.dart';

class ParcelOrderScreen extends StatelessWidget {
  final CustomColorSet colors;
  final ScrollController controller;

  const ParcelOrderScreen(
      {super.key, required this.colors, required this.controller});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      isLtr: LocalStorage.getLangLtr(),
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
        padding: EdgeInsets.only(
          left: 16.r,
          right: 16.r,
        ),
        child: BlocBuilder<ParcelBloc, ParcelState>(
          builder: (context, state) {
            return state.isLoading
                ? const Loading()
                : ListView(
                    controller: controller,
                    padding: EdgeInsets.symmetric(vertical: 24.r),
                    children: [
                      ParcelTitle(parcel: state.parcel, colors: colors),
                      10.verticalSpace,
                      OrderStatusWidget(
                        colors: colors,
                        status: state.parcel?.status,
                        createAt: state.parcel?.createdAt,
                        notes: const [],
                      ),
                      if (state.parcel?.deliveryman != null)
                        DeliverymanWidget(
                            colors: colors,
                            deliveryman: state.parcel?.deliveryman),
                      LocationWidget(colors: colors, parcel: state.parcel),
                      24.verticalSpace,
                      Column(
                        children: [
                          16.verticalSpace,
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.r),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppHelpers.getTranslation(TrKeys.total),
                                  style: CustomStyle.interBold(
                                      color: colors.textBlack, size: 14),
                                ),
                                Text(
                                  AppHelpers.numberFormat(
                                      number: state.parcel?.totalPrice),
                                  style: CustomStyle.interBold(
                                      color: colors.textBlack, size: 14),
                                ),
                              ],
                            ),
                          ),
                          24.verticalSpace,
                        ],
                      )
                    ],
                  );
          },
        ),
      ),
    );
  }
}
