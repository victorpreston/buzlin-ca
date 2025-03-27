import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/booking/booking_bloc.dart';
import 'package:demand/infrastructure/service/services.dart';

import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/route/app_route_service.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';

class UpComingTwoList extends StatelessWidget {
  final CustomColorSet colors;

  const UpComingTwoList({super.key, required this.colors});

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
                    height: 176.r,
                    child: PageView.builder(
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
        padding: EdgeInsets.all(8.r),
        margin: EdgeInsets.symmetric(horizontal: 16.r),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: colors.newBoxColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomNetworkImage(
                  url: state.upcoming[index].shop?.logoImg,
                  height: 50,
                  width: 50,
                  radius: 25,
                ),
                const Spacer(),
                Text(
                  TimeService.dateFormatWDM(state.upcoming[index].startDate),
                  style: CustomStyle.interNormal(
                      color: colors.textBlack, size: 14),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  AppHelpers.numberFormat(
                      number: state.upcoming[index].totalPriceByParent),
                  style: CustomStyle.interNormal(
                      color: colors.textBlack, size: 14),
                )
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(12.r),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      color: colors.textWhite),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        FlutterRemix.time_line,
                        color: colors.textBlack,
                      ),
                      8.horizontalSpace,
                      Text(
                        TimeService.timeFormat(
                            state.upcoming[index].startDate),
                        style: CustomStyle.interNormal(
                            color: colors.textBlack, size: 14),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                    padding: EdgeInsets.all(8.r),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ListConstants.serviceColors[index % 11]),
                    child: IconButton(
                      icon: Icon(
                        FlutterRemix.arrow_right_up_line,
                        color: colors.textBlack,
                      ),
                      onPressed: () {},
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
