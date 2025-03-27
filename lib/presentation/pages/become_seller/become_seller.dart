import 'package:demand/domain/model/request/create_shop_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/app_constants.dart';
import 'package:demand/application/become_seller/become_seller_bloc.dart';
import 'package:demand/application/map/map_bloc.dart';
import 'package:demand/domain/model/model/location_model.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/pages/become_seller/widgets/bg_image_screen.dart';
import 'package:demand/presentation/pages/become_seller/widgets/delivery_info.dart';
import 'package:demand/presentation/pages/become_seller/widgets/logo_screen.dart';
import 'package:demand/presentation/pages/map/map_page.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io' show Platform;

import 'widgets/doc_screen.dart';

class BecomeSellerPage extends StatefulWidget {
  const BecomeSellerPage({super.key});

  @override
  State<BecomeSellerPage> createState() => _BecomeSellerPageState();
}

class _BecomeSellerPageState extends State<BecomeSellerPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController title;
  late TextEditingController description;
  late TextEditingController phone;
  late TextEditingController deliveryType;
  late TextEditingController deliveryFrom;
  late TextEditingController deliveryTo;
  late TextEditingController minAmount;
  late TextEditingController tax;
  late TextEditingController address;
  LocationModel? location;

  List<String> types = [
    TrKeys.month,
    TrKeys.week,
    TrKeys.day,
    TrKeys.hour,
    TrKeys.minute,
  ];

  List<String> deliveryTypes = [
    TrKeys.wareHouse,
    TrKeys.self,
  ];

  @override
  void initState() {
    title = TextEditingController();
    description = TextEditingController();
    phone = TextEditingController();
    deliveryFrom = TextEditingController();
    deliveryTo = TextEditingController();
    deliveryType = TextEditingController();
    minAmount = TextEditingController();
    tax = TextEditingController();
    address = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    title.dispose();
    description.dispose();
    phone.dispose();
    deliveryFrom.dispose();
    deliveryTo.dispose();
    deliveryType.dispose();
    minAmount.dispose();
    tax.dispose();
    address.dispose();
    super.dispose();
  }

  createShop(BecomeSellerState state) {
    if (formKey.currentState?.validate() ?? false) {
      if (state.logoPath?.isEmpty ?? true) {
        AppHelpers.errorSnackBar(
            context: context,
            message: AppHelpers.getTranslation(TrKeys.logoIsNotEmpty));
        return;
      }
      if (state.bgPath?.isEmpty ?? true) {
        AppHelpers.errorSnackBar(
            context: context,
            message: AppHelpers.getTranslation(TrKeys.bgImageIsNotEmpty));
        return;
      }   if (state.filepath.isEmpty) {
        AppHelpers.errorSnackBar(
            context: context,
            message: AppHelpers.getTranslation(TrKeys.uploadDocumentsFor));
        return;
      }
      context.read<BecomeSellerBloc>().add(
        BecomeSellerEvent.createShop(
          context: context,
          request: CreateShopModel(
            shopName: title.text,
            description: description.text,
            phone: phone.text,
            deliveryTo: deliveryTo.text,
            deliveryFrom: deliveryFrom.text,
            deliveryType: state.deliveryType,
            deliveryTimeType: state.type,
            minAmount: minAmount.text,
            tax: tax.text,
            location: location,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: (colors) => SafeArea(
        bottom: false,
        child: KeyboardDismisser(
          isLtr: LocalStorage.getLangLtr(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  PopButton(colors: colors),
                  Text(
                    AppHelpers.getTranslation(TrKeys.becomeSeller),
                    style: CustomStyle.interNoSemi(
                        color: colors.textBlack, size: 18),
                  )
                ],
              ),
              BlocBuilder<BecomeSellerBloc, BecomeSellerState>(
                builder: (context, state) {
                  return state.isSuccess ||
                      LocalStorage.getUser().shop?.status == "new"
                      ? _processing(colors)
                      : LocalStorage.getUser().shop?.status == "approved"
                      ? _approved(colors)
                      : Form(
                    key: formKey,
                    child: Expanded(
                      child: ListView(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.r, vertical: 24.r),
                        shrinkWrap: true,
                        children: [
                          LogoScreen(colors: colors),
                          16.verticalSpace,
                          BgImageScreen(colors: colors),
                          16.verticalSpace,
                          DocScreen(colors: colors),
                          16.verticalSpace,
                          CustomTextFormField(
                            hint: AppHelpers.getTranslation(
                                TrKeys.shopName),
                            controller: title,
                            validation:
                            AppValidators.isNotEmptyValidator,
                          ),
                          16.verticalSpace,
                          CustomTextFormField(
                            hint: AppHelpers.getTranslation(
                                TrKeys.description),
                            controller: description,
                            validation:
                            AppValidators.isNotEmptyValidator,
                          ),
                          16.verticalSpace,
                          CustomTextFormField(
                            hint: AppHelpers.getTranslation(
                                TrKeys.phoneNumber),
                            controller: phone,
                            validation:
                            AppValidators.isNotEmptyValidator,
                            inputType: TextInputType.phone,
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          ),
                          16.verticalSpace,
                          DeliveryInfo(
                              colors: colors,
                              types: types,
                              deliveryTypes: deliveryTypes,
                              deliveryFrom: deliveryFrom,
                              deliveryTo: deliveryTo),
                          16.verticalSpace,
                          _orderInfo(colors),
                          16.verticalSpace,
                          CustomTextFormField(
                            hint: AppHelpers.getTranslation(
                                TrKeys.address),
                            controller: address,
                            validation:
                            AppValidators.isNotEmptyValidator,
                            readOnly: true,
                            onTap: () async {
                              final data =
                              await Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) =>
                                      MultiBlocProvider(providers: [
                                        BlocProvider(
                                            create: (context) =>
                                                MapBloc()),
                                      ], child: const MapPage()),
                                ),
                              );
                              if (data.runtimeType == LocationModel) {
                                address.text =
                                    (data as LocationModel).address ??
                                        "";
                                location = data;
                              }
                            },
                          ),
                          24.verticalSpace,
                          BlocBuilder<BecomeSellerBloc,
                              BecomeSellerState>(
                            builder: (context, state) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.viewInsetsOf(
                                        context)
                                        .bottom),
                                child: CustomButton(
                                    isLoading: state.isLoading,
                                    title: AppHelpers.getTranslation(
                                        TrKeys.save),
                                    bgColor: colors.primary,
                                    titleColor: colors.white,
                                    onTap: () => createShop(state)),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _approved(CustomColorSet colors) {
    return Padding(
      padding: EdgeInsets.all(24.r),
      child: Column(
        children: [
          CustomButton(
            title: AppHelpers.getTranslation(TrKeys.goToAdminPanel),
            bgColor: colors.primary,
            titleColor: colors.white,
            onTap: () async {
              final Uri launchUri = Uri.parse(AppConstants.adminPageUrl);
              await launchUrl(launchUri);
            },
          ),
          24.verticalSpace,
          CustomButton(
            title: AppHelpers.getTranslation(Platform.isAndroid
                ? TrKeys.goToSellerAppOnAndroid
                : TrKeys.goToSellerAppOnIos),
            bgColor: colors.primary,
            titleColor: colors.white,
            onTap: () async {
              final Uri launchUri = Uri.parse(AppHelpers.getSellerApp());
              await launchUrl(launchUri, mode: LaunchMode.externalApplication);
            },
          ),
        ],
      ),
    );
  }

  Column _processing(CustomColorSet colors) {
    return Column(
      children: [
        Lottie.asset('assets/lottie/processing.json'),
        Text(
          AppHelpers.getTranslation(TrKeys.yourRequest),
          style: CustomStyle.interNoSemi(
            size: 18,
            color: colors.textBlack,
          ),
        ),
      ],
    );
  }

  Column _orderInfo(CustomColorSet colors) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppHelpers.getTranslation(TrKeys.orderInfo),
          style: CustomStyle.interNormal(color: colors.textBlack),
        ),
        16.verticalSpace,
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                hint: AppHelpers.getTranslation(TrKeys.minAmount),
                controller: minAmount,
                validation: AppValidators.isNumberValidator,
                inputType: TextInputType.number,
              ),
            ),
            16.horizontalSpace,
            Expanded(
              child: CustomTextFormField(
                hint: AppHelpers.getTranslation(TrKeys.tax),
                controller: tax,
                inputType: TextInputType.number,
                validation: AppValidators.isNumberValidator,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
