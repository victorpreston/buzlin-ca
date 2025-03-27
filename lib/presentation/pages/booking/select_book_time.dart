import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/booking/booking_bloc.dart';
import 'package:demand/domain/model/model/master_model.dart';
import 'package:demand/domain/model/response/check_time_response.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/route/app_route.dart';
import 'package:demand/presentation/route/app_route_service.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';

class SelectBookTime extends StatelessWidget {
  final Map<int, MasterModel> selectMasters;

  const SelectBookTime({super.key, required this.selectMasters});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: (colors) => KeyboardDismisser(
        isLtr: LocalStorage.getLangLtr(),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Text(
                AppHelpers.getTranslation(TrKeys.selectDateTime),
                style:
                    CustomStyle.interNoSemi(color: colors.textBlack, size: 18),
              ),
              24.verticalSpace,
              BlocBuilder<BookingBloc, BookingState>(
                builder: (context, state) {
                  List<EnableDate> dates = [];
                  state.listDate?.forEach((e) {
                    if (e.serviceMaster?.masterId ==
                        selectMasters.values.first.serviceMaster?.masterId) {
                      dates = e.times ?? [];
                    }
                  });
                  List times = dates
                          .firstWhere(
                              (element) =>
                                  element.date?.day ==
                                  state.selectDateTime?.day,
                              orElse: () => EnableDate(
                                    day: "",
                                  ))
                          .times ??
                      [];
                  return Expanded(
                    child: Column(
                      children: [
                        _days(context, state, colors),
                        16.verticalSpace,
                        times.isEmpty
                            ? Padding(
                                padding: EdgeInsets.only(top: 24.r),
                                child: Text(
                                  AppHelpers.getTranslation(TrKeys.noAvailable),
                                  style: CustomStyle.interNormal(
                                      color: colors.white),
                                ),
                              )
                            : _enableTimes(times, context, state, colors),
                      ],
                    ),
                  );
                },
              ),
              20.verticalSpace
            ],
          ),
        ),
      ),
      floatingButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingButton: (colors) => Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Row(
            children: [
              10.horizontalSpace,
              BlocBuilder<BookingBloc, BookingState>(
                builder: (context, state) {
                  return state.selectBookTime != null
                      ? Expanded(
                          child: SizedBox(
                            height: 56.r,
                            child: CustomButton(
                                title: AppHelpers.getTranslation(TrKeys.next),
                                bgColor: colors.primary,
                                titleColor: colors.textWhite,
                                onTap: () {
                                  if (LocalStorage.getToken().isEmpty) {
                                    AppRoute.goLogin(context);
                                    return;
                                  }
                                  int hour = int.parse(state.selectBookTime
                                          ?.substring(
                                              0,
                                              state.selectBookTime
                                                  ?.indexOf(":")) ??
                                      "0");
                                  int minute = int.parse(state.selectBookTime
                                          ?.substring((state.selectBookTime
                                                      ?.indexOf(":") ??
                                                  0) +
                                              1) ??
                                      "0");
                                  context.read<BookingBloc>().add(
                                        BookingEvent.selectTime(
                                            serviceId: state
                                                .selectMasters
                                                .values
                                                .first
                                                .serviceMaster
                                                ?.masterId,
                                            selectTime: DateTime(
                                              state.selectDateTime?.year ?? 0,
                                              state.selectDateTime?.month ?? 0,
                                              state.selectDateTime?.day ?? 0,
                                              hour,
                                              minute,
                                            )),
                                      );
                                  AppRouteService.goAddNotePage(
                                    context: context,
                                    shopId: state.selectMasters.values.first
                                            .serviceMaster?.shopId ??
                                        0,
                                  );
                                }),
                          ),
                        )
                      : const SizedBox.shrink();
                },
              ),
              10.horizontalSpace,
              PopButton(colors: colors),
            ],
          ),
        ),
      ),
    );
  }

  Padding _days(
      BuildContext context, BookingState state, CustomColorSet colors) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: EasyDateTimeLine(
        locale: LocalStorage.getLanguage()?.locale ?? "ar_SA",
        initialDate: DateTime.now(),
        onDateChange: (selectedDate) {
          context
              .read<BookingBloc>()
              .add(BookingEvent.selectDateTime(selectDateTime: selectedDate));
        },
        disabledDates: [
          ...List.generate(335,
              (index) => DateTime.now().subtract(Duration(days: index + 1))),
          // ...(state.listDate?.map((e) {
          //       if (e.closed ?? false) {
          //         return e.date ??
          //             DateTime.now().subtract(const Duration(days: 1));
          //       }
          //       return DateTime.now().subtract(const Duration(days: 1));
          //     }).toList() ??
          //     [])
        ],
        activeColor: colors.textWhite,
        headerProps: EasyHeaderProps(
          padding: const EdgeInsets.only(left: 10),
          selectedDateStyle:
              CustomStyle.interNoSemi(color: colors.textBlack, size: 14),
          monthStyle: CustomStyle.interNoSemi(color: Colors.black, size: 14),
          monthPickerType: MonthPickerType.dropDown,
          dateFormatter: const DateFormatter.fullDateDMY(),
        ),
        dayProps: EasyDayProps(
          todayStyle: DayStyle(
              dayStrStyle: CustomStyle.interNoSemi(
                  color:
                      LocalStorage.getMode() ? colors.textBlack : colors.white,
                  size: 14),
              dayNumStyle: CustomStyle.interNoSemi(
                  color:
                      LocalStorage.getMode() ? colors.textBlack : colors.white,
                  size: 16)),
          inactiveDayStyle: DayStyle(
              dayStrStyle: CustomStyle.interNoSemi(
                  color:
                      LocalStorage.getMode() ? colors.textBlack : colors.white,
                  size: 12),
              dayNumStyle: CustomStyle.interNoSemi(
                  color:
                      LocalStorage.getMode() ? colors.textBlack : colors.white,
                  size: 16)),
          disabledDayStyle: DayStyle(
            dayStrStyle: CustomStyle.interNoSemi(
                color: LocalStorage.getMode() ? Colors.grey : Colors.grey,
                size: 14),
            dayNumStyle: CustomStyle.interNoSemi(
                color: LocalStorage.getMode() ? Colors.grey : Colors.grey,
                size: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: colors.icon,
            ),
          ),
          dayStructure: DayStructure.dayStrDayNum,
          todayHighlightColor: colors.white,
          activeDayStyle: DayStyle(
            dayStrStyle: CustomStyle.interNoSemi(
                color: LocalStorage.getMode() ? colors.textBlack : colors.white,
                size: 15),
            dayNumStyle: CustomStyle.interNoSemi(
                color: LocalStorage.getMode() ? colors.textBlack : colors.white,
                size: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: colors.primary,
            ),
          ),
        ),
      ),
    );
  }

  Expanded _enableTimes(
    List<dynamic> times,
    BuildContext context,
    BookingState state,
    CustomColorSet colors,
  ) {
    bool check = true;
    return Expanded(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 100.r),
        child: Wrap(
          children: times.map((time) {
            check = true;
            if (state.selectDateTime?.day == DateTime.now().day) {
              final parts = time.split(':');
              final hour = int.parse(parts[0]);
              final minute = int.parse(parts[1]);
              if (hour < TimeOfDay.now().hour) {
                check = false;
              }
              if (hour == TimeOfDay.now().hour &&
                  minute < TimeOfDay.now().minute) {
                check = false;
              }
            }

            return check
                ? ButtonEffectAnimation(
                    onTap: () {
                      context
                          .read<BookingBloc>()
                          .add(BookingEvent.selectBookingTime(time: time));
                    },
                    child: Container(
                      width: 120,
                      margin: EdgeInsets.all(5.r),
                      decoration: BoxDecoration(
                          color: state.selectBookTime == time
                              ? colors.primary
                              : colors.transparent,
                          borderRadius: BorderRadius.circular(15.r),
                          border: Border.all(
                              color: state.selectBookTime == time
                                  ? colors.primary
                                  : colors.textBlack)),
                      padding:
                          EdgeInsets.symmetric(vertical: 10.r, horizontal: 3.r),
                      child: Center(
                        child: Text(
                          time, // Use the formatted time
                          style: CustomStyle.interNormal(
                              color: state.selectBookTime == time
                                  ? colors.white
                                  : colors.textBlack),
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink();
          }).toList(),
        ),
      ),
    );
  }
}
