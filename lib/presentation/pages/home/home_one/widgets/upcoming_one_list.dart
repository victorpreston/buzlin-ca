import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/booking/booking_bloc.dart';
import 'package:demand/infrastructure/service/services.dart';

import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/route/app_route_service.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';

class UpComingOneList extends StatelessWidget {
  final CustomColorSet colors;

  const UpComingOneList({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      builder: (context, state) {
        return state.upcoming.isNotEmpty
            ? Column(
                children: [
                  TitleWidget(
                    title: AppHelpers.getTranslation(TrKeys.upcomingAppointments),
                    titleColor: colors.textBlack,
                  ),
                  16.verticalSpace,
                  SizedBox(
                    height: 80.r,
                    child: ListView.builder(
                        itemCount: state.upcoming.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return _bookingItem(index, state, context);
                        }),
                  ),
                ],
              )
            : const SizedBox.shrink();
      },
    );
  }

  Widget _bookingItem(int index, BookingState state, BuildContext context) {
    return ButtonEffectAnimation(
      onTap: () {
        AppRouteService.goBookingPage(
            context: context,
            shop: state.upcoming[index].shop,
            id: state.upcoming[index].id ?? 0);
      },
      child: Container(
        margin: EdgeInsets.only(left: 16.r),
        padding: EdgeInsets.symmetric(horizontal: 8.r),
        decoration: BoxDecoration(
          border: Border.all(color: colors.icon),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomNetworkImage(
              url: state.upcoming[index].shop?.logoImg,
              height: 70,
              width: 70,
              radius: 20,
            ),
            14.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      state.upcoming[index].shop?.translation?.title ?? "",
                      style: CustomStyle.interNormal(
                          color: colors.textBlack, size: 20),
                    ),
                    if (state.upcoming[index].shop?.verify ?? false)
                      const BadgeItem(),
                  ],
                ),
                Text(
                  "${TimeService.dateFormatWDM(state.upcoming[index].startDate)} - ${TimeService.timeFormat(state.upcoming[index].startDate)}",
                  style:
                      CustomStyle.interNormal(color: colors.textHint, size: 14),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
