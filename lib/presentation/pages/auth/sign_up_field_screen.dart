import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/app_constants.dart';
import 'package:demand/application/auth/auth_bloc.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/route/app_route.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../route/app_route_setting.dart';

class SignUpFieldScreen extends StatefulWidget {
  final CustomColorSet colors;
  final bool isPhone;
  final String phone;

  const SignUpFieldScreen(
      {super.key,
      required this.colors,
      required this.isPhone,
      required this.phone});

  @override
  State<SignUpFieldScreen> createState() => _SignUpFieldScreenState();
}

class _SignUpFieldScreenState extends State<SignUpFieldScreen> {
  late TextEditingController firstName;
  late TextEditingController userName;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController referral;
  late TextEditingController password;
  late TextEditingController confirmPassword;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    firstName = TextEditingController();
    userName = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    confirmPassword = TextEditingController();
    password = TextEditingController();
    referral = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    firstName.dispose();
    userName.dispose();
    phone.dispose();
    email.dispose();
    confirmPassword.dispose();
    password.dispose();
    referral.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final event = context.read<AuthBloc>();
    return BlurWrap(
      radius: BorderRadius.only(
        topLeft: Radius.circular(AppConstants.radius.r),
        topRight: Radius.circular(AppConstants.radius.r),
      ),
      child: KeyboardDismisser(
        isLtr: LocalStorage.getLangLtr(),
        child: Container(
          margin:
              EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppConstants.radius.r),
              topRight: Radius.circular(AppConstants.radius.r),
            ),
            color: CustomStyle.black.withOpacity(0.25),
          ),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.all(20.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              FlutterRemix.arrow_left_line,
                              color: widget.colors.white,
                              size: 26.r,
                            )),
                        const Spacer(),
                        Text(
                          AppHelpers.getTranslation(TrKeys.signUp),
                          style: CustomStyle.interNoSemi(
                              color: widget.colors.white, size: 20),
                        ),
                        const Spacer(),
                        SizedBox(width: 42.r)
                      ],
                    ),
                    32.verticalSpace,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: widget.colors.socialButtonColor,
                      ),
                      child: CustomTextFormField(
                        validation: AppValidators.isNotEmptyValidator,
                        controller: firstName,
                        hint: AppHelpers.getTranslation(TrKeys.fullName),
                      ),
                    ),
                    16.verticalSpace,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: widget.colors.socialButtonColor,
                      ),
                      child: CustomTextFormField(
                        validation: AppValidators.isNotEmptyValidator,
                        controller: userName,
                        hint: AppHelpers.getTranslation(TrKeys.userName),
                      ),
                    ),
                    if (!widget.isPhone) 16.verticalSpace,
                    if (AppConstants.signUpType == SignUpType.phone &&
                        !widget.isPhone)
                      IntlPhoneField(
                        cursorWidth: 1,
                        cursorColor: widget.colors.textBlack,
                        disableLengthCheck:
                            !AppConstants.isNumberLengthAlwaysSame,
                        initialCountryCode:
                            LocalStorage.getAddress()?.countryCode ??
                                AppConstants.countryCodeISO,
                        autovalidateMode: AppConstants.isNumberLengthAlwaysSame
                            ? AutovalidateMode.onUserInteraction
                            : AutovalidateMode.disabled,
                        showCountryFlag: AppConstants.showFlag,
                        showDropdownIcon: AppConstants.showArrowIcon,
                        validator: (s) {
                          if (AppConstants.isNumberLengthAlwaysSame &&
                              (s?.isValidNumber() ?? true)) {
                            return AppHelpers.getTranslation(
                                TrKeys.phoneNumberIsNotValid);
                          }
                          return null;
                        },
                        style: CustomStyle.interNormal(
                          size: 14.sp,
                          color: widget.colors.textBlack,
                        ),
                        onChanged: (phoneNum) {
                          phone.text = phoneNum.completeNumber;
                        },
                        dropdownTextStyle: CustomStyle.interNormal(
                          size: 14.sp,
                          color: widget.colors.textBlack,
                        ),
                        keyboardType: TextInputType.phone,
                        invalidNumberMessage: AppHelpers.getTranslation(
                            TrKeys.phoneNumberIsNotValid),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        textAlignVertical: const TextAlignVertical(y: .2),
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          fillColor: widget.colors.socialButtonColor,
                          filled: true,
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: widget.colors.icon)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: CustomStyle.icon)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: CustomStyle.icon)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: CustomStyle.icon)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: CustomStyle.icon)),
                        ),
                      ),
                    if (!(AppConstants.signUpType == SignUpType.phone) &&
                        !widget.isPhone)
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: widget.colors.socialButtonColor,
                        ),
                        child: CustomTextFormField(
                          validation: AppValidators.isNotEmptyValidator,
                          controller: phone,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          hint: AppHelpers.getTranslation(TrKeys.phoneNumber),
                        ),
                      ),
                    if (widget.isPhone) 16.verticalSpace,
                    if (widget.isPhone)
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: widget.colors.socialButtonColor,
                        ),
                        child: CustomTextFormField(
                          validation: AppValidators.isValidEmail,
                          controller: email,
                          hint: AppHelpers.getTranslation(TrKeys.email),
                        ),
                      ),
                    16.verticalSpace,
                    BlocBuilder<AuthBloc, AuthState>(
                      buildWhen: (l, n) {
                        return l.isShowPassword != n.isShowPassword;
                      },
                      builder: (context, state) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: widget.colors.socialButtonColor,
                          ),
                          child: CustomTextFormField(
                            obscure: state.isShowPassword,
                            maxLines: 1,
                            controller: password,
                            validation: AppValidators.isValidPassword,
                            suffixIcon: IconButton(
                              onPressed: () {
                                event.add(const AuthEvent.showPassword());
                              },
                              icon: Icon(
                                !state.isShowPassword
                                    ? FlutterRemix.eye_close_line
                                    : FlutterRemix.eye_line,
                                color: widget.colors.textBlack,
                              ),
                            ),
                            hint: AppHelpers.getTranslation(TrKeys.password),
                          ),
                        );
                      },
                    ),
                    16.verticalSpace,
                    BlocBuilder<AuthBloc, AuthState>(
                      buildWhen: (l, n) {
                        return l.isShowConfirmPassword !=
                            n.isShowConfirmPassword;
                      },
                      builder: (context, state) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: widget.colors.socialButtonColor,
                          ),
                          child: CustomTextFormField(
                            obscure: state.isShowConfirmPassword,
                            maxLines: 1,
                            controller: confirmPassword,
                            validation: (s) =>
                                AppValidators.isValidConfirmPassword(
                                    password.text, s),
                            suffixIcon: IconButton(
                              onPressed: () {
                                context
                                    .read<AuthBloc>()
                                    .add(const AuthEvent.showConfirmPassword());
                              },
                              icon: Icon(
                                !state.isShowConfirmPassword
                                    ? FlutterRemix.eye_close_line
                                    : FlutterRemix.eye_line,
                                color: widget.colors.textBlack,
                              ),
                            ),
                            hint: AppHelpers.getTranslation(
                                TrKeys.confirmPassword),
                          ),
                        );
                      },
                    ),
                    16.verticalSpace,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: widget.colors.socialButtonColor,
                      ),
                      child: CustomTextFormField(
                        controller: referral,
                        hint: AppHelpers.getTranslation(TrKeys.referral),
                      ),
                    ),
                    16.verticalSpace,
                    BlocBuilder<AuthBloc, AuthState>(
                      buildWhen: (l, n) {
                        return l.isLoading != n.isLoading;
                      },
                      builder: (context, state) {
                        return CustomButton(
                            title: AppHelpers.getTranslation(TrKeys.signUp),
                            bgColor: widget.colors.primary,
                            titleColor: CustomStyle.white,
                            isLoading: state.isLoading,
                            onTap: () {
                              if (formKey.currentState?.validate() ?? false) {
                                if (LocalStorage.getToken().isNotEmpty) {
                                  context
                                      .read<AuthBloc>()
                                      .add(AuthEvent.signUpWithData(
                                        context: context,
                                        firstname: firstName.text,
                                        lastname: userName.text,
                                        phone: phone.text,
                                        password: password.text,
                                        referral: referral.text,
                                        onSuccess: () {
                                          if (LocalStorage.getAddress() ==
                                              null) {
                                            AppRouteSetting.goSelectCountry(
                                                context: context);
                                            return;
                                          }
                                          if (AppConstants.isDemo &&
                                              LocalStorage.getUiType() ==
                                                  null) {
                                            AppRouteSetting.goSelectUIType(
                                                context: context);
                                            return;
                                          }
                                          AppRoute.goMain(context);
                                        },
                                      ));
                                  return;
                                }
                                context.read<AuthBloc>().add(AuthEvent.signUp(
                                      context: context,
                                      firstname: firstName.text,
                                      lastname: userName.text,
                                      email: email.text,
                                      phone: widget.phone,
                                      password: password.text,
                                      referral: referral.text,
                                      onSuccess: () {
                                        if (LocalStorage.getAddress() == null) {
                                          AppRouteSetting.goSelectCountry(
                                              context: context);
                                          return;
                                        }
                                        if (AppConstants.isDemo &&
                                            LocalStorage.getUiType() == null) {
                                          AppRouteSetting.goSelectUIType(
                                              context: context);
                                          return;
                                        }
                                        AppRoute.goMain(context);
                                      },
                                    ));
                              }
                            });
                      },
                    ),
                    KeyboardVisibilityBuilder(builder: (s, isKeyboard) {
                      return isKeyboard ? 200.verticalSpace : 24.verticalSpace;
                    })
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
