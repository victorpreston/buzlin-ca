part of 'booking_bloc.dart';

@freezed
abstract class BookingEvent with _$BookingEvent {
  const factory BookingEvent.fetchBookUpcoming(
      {required BuildContext context,
      bool? isRefresh,
      RefreshController? controller}) = FetchBookUpcoming;

  const factory BookingEvent.fetchBookPast(
      {required BuildContext context,
      bool? isRefresh,
      RefreshController? controller}) = FetchBookPast;

  const factory BookingEvent.fetchBookingById(
      {required BuildContext context, required int id}) = FetchBookingById;

  const factory BookingEvent.bookingService({
    required BuildContext context,
    required num totalPrice,
    required ValueChanged<int> onSuccess,
  }) = BookingService;

  const factory BookingEvent.calculateBooking({required BuildContext context}) =
      CalculateBooking;

  const factory BookingEvent.checkTime({
    required BuildContext context,
    required DateTime startTime,
  }) = CheckTime;

  const factory BookingEvent.selectPaymentId({required int id}) =
      SelectPaymentId;

  const factory BookingEvent.payLater({
    required BuildContext context,
    required int? id,
    required num totalPrice,
    required ValueChanged<int> onSuccess,
  }) = PayLater;

  const factory BookingEvent.fetchPayments({
    required BuildContext context,
    required bool payLater,
  }) = FetchPayments;

  const factory BookingEvent.fetchWebView({
    required BuildContext context,
    required int id,
    required ValueChanged onSuccess,
    ValueChanged? onFailure,
  }) = FetchWebView;

  const factory BookingEvent.cancelBook(
      {required BuildContext context,
      required int id,
      VoidCallback? onSuccess}) = CancelBook;

  const factory BookingEvent.selectDateTime(
      {required DateTime selectDateTime}) = SelectDateTime;

  const factory BookingEvent.selectBookingTime({required String time}) =
      SelectBookingTime;

  const factory BookingEvent.setServices(
      {required List<ServiceModel> services,
      VoidCallback? onSuccess,
      VoidCallback? onFailure,
      MasterModel? master}) = SetServices;

  const factory BookingEvent.selectMaster({
    required int? serviceId,
    required MasterModel? master,
  }) = SelectMaster;

  const factory BookingEvent.selectTime({
    required DateTime? selectTime,
    required int? serviceId,
  }) = SelectTime;

  const factory BookingEvent.selectAddress({required UserAddress? address}) =
      SelectAddress;

  const factory BookingEvent.setGiftCart({required MyGiftCartModel? giftCart}) =
      SetGiftCart;

  const factory BookingEvent.saveForm({
    required BuildContext context,
    required FormOptionsData? form,
    VoidCallback? onSuccess,
  }) = SaveForm;

  const factory BookingEvent.updateNotes(
      {required BuildContext context,
      required int id,
      required String message,
      VoidCallback? onSuccess}) = UpdateNotes;

  const factory BookingEvent.checkCoupon(
      {required BuildContext context,
      required String coupon,
      required int shopId,
      bool? clear}) = CheckCoupon;
}
