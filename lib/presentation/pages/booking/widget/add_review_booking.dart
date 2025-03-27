import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:demand/application/review/review_bloc.dart';
import 'package:demand/domain/model/response/booking_response.dart';
import 'package:demand/domain/model/response/review_pagination_response.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/style/style.dart';

class AddReviewBooking extends StatefulWidget {
  final int? shopId;
  final BookingModel? bookingModel;
  final ReviewModel? review;

  const AddReviewBooking(
      {super.key,
      required this.shopId,
      required this.bookingModel,
      this.review});

  @override
  State<AddReviewBooking> createState() => _AddReviewBookingState();
}

class _AddReviewBookingState extends State<AddReviewBooking> {
  final GlobalKey<FormState> form = GlobalKey<FormState>();
  late TextEditingController comment;

  @override
  void initState() {
    comment = TextEditingController(text: widget.review?.comment);
    super.initState();
  }

  @override
  void dispose() {
    comment.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: (colors) => KeyboardDismisser(
        isLtr: LocalStorage.getLangLtr(),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.r),
                child: Text(
                  AppHelpers.getTranslation(TrKeys.addReview),
                  style: CustomStyle.interNoSemi(
                      color: colors.textBlack, size: 18),
                ),
              ),
              32.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.r),
                child: Text(
                  "${AppHelpers.getTranslation(TrKeys.rateYourExperienceAt)} ${widget.bookingModel?.serviceMaster?.service?.translation?.title ?? ""}",
                  style: CustomStyle.interNormal(
                      color: colors.textBlack, size: 24),
                  textAlign: TextAlign.center,
                ),
              ),
              24.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.r),
                child: RatingBar.builder(
                  unratedColor: colors.textHint,
                  initialRating: (widget.review?.rating ?? 3).toDouble(),
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemSize: 32.r,
                  glowColor: CustomStyle.starColor,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.r),
                  onRatingUpdate: (rating) {
                    context
                        .read<ReviewBloc>()
                        .add(ReviewEvent.setReview(review: rating));
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return const Icon(
                      FlutterRemix.star_smile_fill,
                      color: CustomStyle.starColor,
                    );
                  },
                ),
              ),
              32.verticalSpace,
              SizedBox(
                height: 84.r,
                child: BlocBuilder<ReviewBloc, ReviewState>(
                  builder: (context, state) {
                    return ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 16.r),
                      itemCount: ListConstants.reviewType.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 16.r),
                          child: ButtonEffectAnimation(
                            onTap: () {
                              context.read<ReviewBloc>().add(
                                    ReviewEvent.selectOfType(
                                        type: ListConstants.reviewType[index]),
                                  );
                            },
                            child: Container(
                              padding: EdgeInsets.all(16.r),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: state.selectedTypes.contains(
                                    ListConstants.reviewType[index])
                                    ? CustomStyle.starColor
                                    : colors.textBlack.withOpacity(0.2),
                              ),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                      "assets/svg/${ListConstants.reviewType[index]}.svg",
                                      width: 24.r),
                                  8.verticalSpace,
                                  Text(
                                    AppHelpers.getTranslation(
                                        ListConstants.reviewType[index]),
                                    style: CustomStyle.interNormal(
                                        color: colors.textBlack),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              24.verticalSpace,
              Form(
                key: form,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.r),
                  child: CustomTextFormField(
                    controller: comment,
                    validation: AppValidators.isNotEmptyValidator,
                    hint: AppHelpers.getTranslation(TrKeys.writeYourReview),
                    maxLines: 3,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingButton: (colors) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        child: Row(
          children: [
            PopButton(colors: colors),
            16.horizontalSpace,
            BlocBuilder<ReviewBloc, ReviewState>(
              builder: (context, state) {
                return Expanded(
                  child: SizedBox(
                    height: 60.r,
                    child: CustomButton(
                        isLoading: state.isButtonLoading,
                        title: AppHelpers.getTranslation(TrKeys.save),
                        bgColor: colors.primary,
                        titleColor: colors.white,
                        onTap: () {
                          if (form.currentState!.validate()) {
                            context.read<ReviewBloc>().add(
                                  ReviewEvent.sendReview(
                                    context: context,
                                    comment: comment.text,
                                    shopId: widget.shopId,
                                    bookingId: widget.bookingModel?.id,
                                    onSuccess: () {
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                    },
                                  ),
                                );
                          }
                        }),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
