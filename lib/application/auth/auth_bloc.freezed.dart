// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      String phone,
      String password,
      VoidCallback? onSuccess});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? phone = null,
    Object? password = null,
    Object? onSuccess = freezed,
  }) {
    return _then(_$LoginImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements Login {
  const _$LoginImpl(
      {required this.context,
      required this.phone,
      required this.password,
      this.onSuccess});

  @override
  final BuildContext context;
  @override
  final String phone;
  @override
  final String password;
  @override
  final VoidCallback? onSuccess;

  @override
  String toString() {
    return 'AuthEvent.login(context: $context, phone: $phone, password: $password, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, phone, password, onSuccess);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return login(context, phone, password, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return login?.call(context, phone, password, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(context, phone, password, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements AuthEvent {
  const factory Login(
      {required final BuildContext context,
      required final String phone,
      required final String password,
      final VoidCallback? onSuccess}) = _$LoginImpl;

  BuildContext get context;
  String get phone;
  String get password;
  VoidCallback? get onSuccess;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      String firstname,
      String lastname,
      String email,
      String phone,
      String password,
      String referral,
      VoidCallback? onSuccess});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? email = null,
    Object? phone = null,
    Object? password = null,
    Object? referral = null,
    Object? onSuccess = freezed,
  }) {
    return _then(_$SignUpImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      referral: null == referral
          ? _value.referral
          : referral // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$SignUpImpl implements SignUp {
  const _$SignUpImpl(
      {required this.context,
      required this.firstname,
      required this.lastname,
      required this.email,
      required this.phone,
      required this.password,
      required this.referral,
      this.onSuccess});

  @override
  final BuildContext context;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String password;
  @override
  final String referral;
  @override
  final VoidCallback? onSuccess;

  @override
  String toString() {
    return 'AuthEvent.signUp(context: $context, firstname: $firstname, lastname: $lastname, email: $email, phone: $phone, password: $password, referral: $referral, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.referral, referral) ||
                other.referral == referral) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, firstname, lastname,
      email, phone, password, referral, onSuccess);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return signUp(context, firstname, lastname, email, phone, password,
        referral, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return signUp?.call(context, firstname, lastname, email, phone, password,
        referral, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(context, firstname, lastname, email, phone, password,
          referral, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements AuthEvent {
  const factory SignUp(
      {required final BuildContext context,
      required final String firstname,
      required final String lastname,
      required final String email,
      required final String phone,
      required final String password,
      required final String referral,
      final VoidCallback? onSuccess}) = _$SignUpImpl;

  BuildContext get context;
  String get firstname;
  String get lastname;
  String get email;
  String get phone;
  String get password;
  String get referral;
  VoidCallback? get onSuccess;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpWithDataImplCopyWith<$Res> {
  factory _$$SignUpWithDataImplCopyWith(_$SignUpWithDataImpl value,
          $Res Function(_$SignUpWithDataImpl) then) =
      __$$SignUpWithDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      String firstname,
      String lastname,
      String phone,
      String password,
      String referral,
      VoidCallback? onSuccess});
}

/// @nodoc
class __$$SignUpWithDataImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpWithDataImpl>
    implements _$$SignUpWithDataImplCopyWith<$Res> {
  __$$SignUpWithDataImplCopyWithImpl(
      _$SignUpWithDataImpl _value, $Res Function(_$SignUpWithDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? firstname = null,
    Object? lastname = null,
    Object? phone = null,
    Object? password = null,
    Object? referral = null,
    Object? onSuccess = freezed,
  }) {
    return _then(_$SignUpWithDataImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      firstname: null == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: null == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      referral: null == referral
          ? _value.referral
          : referral // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$SignUpWithDataImpl implements SignUpWithData {
  const _$SignUpWithDataImpl(
      {required this.context,
      required this.firstname,
      required this.lastname,
      required this.phone,
      required this.password,
      required this.referral,
      this.onSuccess});

  @override
  final BuildContext context;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String phone;
  @override
  final String password;
  @override
  final String referral;
  @override
  final VoidCallback? onSuccess;

  @override
  String toString() {
    return 'AuthEvent.signUpWithData(context: $context, firstname: $firstname, lastname: $lastname, phone: $phone, password: $password, referral: $referral, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpWithDataImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.referral, referral) ||
                other.referral == referral) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, firstname, lastname,
      phone, password, referral, onSuccess);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpWithDataImplCopyWith<_$SignUpWithDataImpl> get copyWith =>
      __$$SignUpWithDataImplCopyWithImpl<_$SignUpWithDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return signUpWithData(
        context, firstname, lastname, phone, password, referral, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return signUpWithData?.call(
        context, firstname, lastname, phone, password, referral, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (signUpWithData != null) {
      return signUpWithData(
          context, firstname, lastname, phone, password, referral, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return signUpWithData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return signUpWithData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (signUpWithData != null) {
      return signUpWithData(this);
    }
    return orElse();
  }
}

abstract class SignUpWithData implements AuthEvent {
  const factory SignUpWithData(
      {required final BuildContext context,
      required final String firstname,
      required final String lastname,
      required final String phone,
      required final String password,
      required final String referral,
      final VoidCallback? onSuccess}) = _$SignUpWithDataImpl;

  BuildContext get context;
  String get firstname;
  String get lastname;
  String get phone;
  String get password;
  String get referral;
  VoidCallback? get onSuccess;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpWithDataImplCopyWith<_$SignUpWithDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpEmailImplCopyWith<$Res> {
  factory _$$SignUpEmailImplCopyWith(
          _$SignUpEmailImpl value, $Res Function(_$SignUpEmailImpl) then) =
      __$$SignUpEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String email});
}

/// @nodoc
class __$$SignUpEmailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpEmailImpl>
    implements _$$SignUpEmailImplCopyWith<$Res> {
  __$$SignUpEmailImplCopyWithImpl(
      _$SignUpEmailImpl _value, $Res Function(_$SignUpEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? email = null,
  }) {
    return _then(_$SignUpEmailImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpEmailImpl implements SignUpEmail {
  const _$SignUpEmailImpl({required this.context, required this.email});

  @override
  final BuildContext context;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.signUpEmail(context: $context, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEmailImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEmailImplCopyWith<_$SignUpEmailImpl> get copyWith =>
      __$$SignUpEmailImplCopyWithImpl<_$SignUpEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return signUpEmail(context, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return signUpEmail?.call(context, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (signUpEmail != null) {
      return signUpEmail(context, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return signUpEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return signUpEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (signUpEmail != null) {
      return signUpEmail(this);
    }
    return orElse();
  }
}

abstract class SignUpEmail implements AuthEvent {
  const factory SignUpEmail(
      {required final BuildContext context,
      required final String email}) = _$SignUpEmailImpl;

  BuildContext get context;
  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpEmailImplCopyWith<_$SignUpEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocialSignInImplCopyWith<$Res> {
  factory _$$SocialSignInImplCopyWith(
          _$SocialSignInImpl value, $Res Function(_$SocialSignInImpl) then) =
      __$$SocialSignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, IconData type, VoidCallback? onSuccess});
}

/// @nodoc
class __$$SocialSignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SocialSignInImpl>
    implements _$$SocialSignInImplCopyWith<$Res> {
  __$$SocialSignInImplCopyWithImpl(
      _$SocialSignInImpl _value, $Res Function(_$SocialSignInImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? type = null,
    Object? onSuccess = freezed,
  }) {
    return _then(_$SocialSignInImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IconData,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$SocialSignInImpl implements SocialSignIn {
  const _$SocialSignInImpl(
      {required this.context, required this.type, this.onSuccess});

  @override
  final BuildContext context;
  @override
  final IconData type;
  @override
  final VoidCallback? onSuccess;

  @override
  String toString() {
    return 'AuthEvent.socialSignIn(context: $context, type: $type, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialSignInImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, type, onSuccess);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialSignInImplCopyWith<_$SocialSignInImpl> get copyWith =>
      __$$SocialSignInImplCopyWithImpl<_$SocialSignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return socialSignIn(context, type, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return socialSignIn?.call(context, type, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (socialSignIn != null) {
      return socialSignIn(context, type, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return socialSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return socialSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (socialSignIn != null) {
      return socialSignIn(this);
    }
    return orElse();
  }
}

abstract class SocialSignIn implements AuthEvent {
  const factory SocialSignIn(
      {required final BuildContext context,
      required final IconData type,
      final VoidCallback? onSuccess}) = _$SocialSignInImpl;

  BuildContext get context;
  IconData get type;
  VoidCallback? get onSuccess;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialSignInImplCopyWith<_$SocialSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetVerificationIdImplCopyWith<$Res> {
  factory _$$SetVerificationIdImplCopyWith(_$SetVerificationIdImpl value,
          $Res Function(_$SetVerificationIdImpl) then) =
      __$$SetVerificationIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SetVerificationIdImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SetVerificationIdImpl>
    implements _$$SetVerificationIdImplCopyWith<$Res> {
  __$$SetVerificationIdImplCopyWithImpl(_$SetVerificationIdImpl _value,
      $Res Function(_$SetVerificationIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SetVerificationIdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetVerificationIdImpl implements SetVerificationId {
  const _$SetVerificationIdImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'AuthEvent.setVerificationId(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetVerificationIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetVerificationIdImplCopyWith<_$SetVerificationIdImpl> get copyWith =>
      __$$SetVerificationIdImplCopyWithImpl<_$SetVerificationIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return setVerificationId(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return setVerificationId?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (setVerificationId != null) {
      return setVerificationId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return setVerificationId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return setVerificationId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (setVerificationId != null) {
      return setVerificationId(this);
    }
    return orElse();
  }
}

abstract class SetVerificationId implements AuthEvent {
  const factory SetVerificationId({required final String id}) =
      _$SetVerificationIdImpl;

  String get id;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetVerificationIdImplCopyWith<_$SetVerificationIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowPasswordImplCopyWith<$Res> {
  factory _$$ShowPasswordImplCopyWith(
          _$ShowPasswordImpl value, $Res Function(_$ShowPasswordImpl) then) =
      __$$ShowPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ShowPasswordImpl>
    implements _$$ShowPasswordImplCopyWith<$Res> {
  __$$ShowPasswordImplCopyWithImpl(
      _$ShowPasswordImpl _value, $Res Function(_$ShowPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowPasswordImpl implements ShowPassword {
  const _$ShowPasswordImpl();

  @override
  String toString() {
    return 'AuthEvent.showPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return showPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return showPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return showPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return showPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword(this);
    }
    return orElse();
  }
}

abstract class ShowPassword implements AuthEvent {
  const factory ShowPassword() = _$ShowPasswordImpl;
}

/// @nodoc
abstract class _$$ShowConfirmPasswordImplCopyWith<$Res> {
  factory _$$ShowConfirmPasswordImplCopyWith(_$ShowConfirmPasswordImpl value,
          $Res Function(_$ShowConfirmPasswordImpl) then) =
      __$$ShowConfirmPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowConfirmPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ShowConfirmPasswordImpl>
    implements _$$ShowConfirmPasswordImplCopyWith<$Res> {
  __$$ShowConfirmPasswordImplCopyWithImpl(_$ShowConfirmPasswordImpl _value,
      $Res Function(_$ShowConfirmPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowConfirmPasswordImpl implements ShowConfirmPassword {
  const _$ShowConfirmPasswordImpl();

  @override
  String toString() {
    return 'AuthEvent.showConfirmPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowConfirmPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return showConfirmPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return showConfirmPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (showConfirmPassword != null) {
      return showConfirmPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return showConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return showConfirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (showConfirmPassword != null) {
      return showConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class ShowConfirmPassword implements AuthEvent {
  const factory ShowConfirmPassword() = _$ShowConfirmPasswordImpl;
}

/// @nodoc
abstract class _$$SwitchScreenImplCopyWith<$Res> {
  factory _$$SwitchScreenImplCopyWith(
          _$SwitchScreenImpl value, $Res Function(_$SwitchScreenImpl) then) =
      __$$SwitchScreenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthType type});
}

/// @nodoc
class __$$SwitchScreenImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SwitchScreenImpl>
    implements _$$SwitchScreenImplCopyWith<$Res> {
  __$$SwitchScreenImplCopyWithImpl(
      _$SwitchScreenImpl _value, $Res Function(_$SwitchScreenImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$SwitchScreenImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AuthType,
    ));
  }
}

/// @nodoc

class _$SwitchScreenImpl implements SwitchScreen {
  const _$SwitchScreenImpl(this.type);

  @override
  final AuthType type;

  @override
  String toString() {
    return 'AuthEvent.switchScreen(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchScreenImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchScreenImplCopyWith<_$SwitchScreenImpl> get copyWith =>
      __$$SwitchScreenImplCopyWithImpl<_$SwitchScreenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return switchScreen(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return switchScreen?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (switchScreen != null) {
      return switchScreen(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return switchScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return switchScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (switchScreen != null) {
      return switchScreen(this);
    }
    return orElse();
  }
}

abstract class SwitchScreen implements AuthEvent {
  const factory SwitchScreen(final AuthType type) = _$SwitchScreenImpl;

  AuthType get type;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwitchScreenImplCopyWith<_$SwitchScreenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckVerifyImplCopyWith<$Res> {
  factory _$$CheckVerifyImplCopyWith(
          _$CheckVerifyImpl value, $Res Function(_$CheckVerifyImpl) then) =
      __$$CheckVerifyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context, String verifyId, String code, bool? editPhone});
}

/// @nodoc
class __$$CheckVerifyImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckVerifyImpl>
    implements _$$CheckVerifyImplCopyWith<$Res> {
  __$$CheckVerifyImplCopyWithImpl(
      _$CheckVerifyImpl _value, $Res Function(_$CheckVerifyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? verifyId = null,
    Object? code = null,
    Object? editPhone = freezed,
  }) {
    return _then(_$CheckVerifyImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      verifyId: null == verifyId
          ? _value.verifyId
          : verifyId // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      editPhone: freezed == editPhone
          ? _value.editPhone
          : editPhone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$CheckVerifyImpl implements CheckVerify {
  const _$CheckVerifyImpl(
      {required this.context,
      required this.verifyId,
      required this.code,
      this.editPhone});

  @override
  final BuildContext context;
  @override
  final String verifyId;
  @override
  final String code;
  @override
  final bool? editPhone;

  @override
  String toString() {
    return 'AuthEvent.checkVerify(context: $context, verifyId: $verifyId, code: $code, editPhone: $editPhone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckVerifyImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.verifyId, verifyId) ||
                other.verifyId == verifyId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.editPhone, editPhone) ||
                other.editPhone == editPhone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, verifyId, code, editPhone);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckVerifyImplCopyWith<_$CheckVerifyImpl> get copyWith =>
      __$$CheckVerifyImplCopyWithImpl<_$CheckVerifyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return checkVerify(context, verifyId, code, editPhone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return checkVerify?.call(context, verifyId, code, editPhone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (checkVerify != null) {
      return checkVerify(context, verifyId, code, editPhone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return checkVerify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return checkVerify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (checkVerify != null) {
      return checkVerify(this);
    }
    return orElse();
  }
}

abstract class CheckVerify implements AuthEvent {
  const factory CheckVerify(
      {required final BuildContext context,
      required final String verifyId,
      required final String code,
      final bool? editPhone}) = _$CheckVerifyImpl;

  BuildContext get context;
  String get verifyId;
  String get code;
  bool? get editPhone;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckVerifyImplCopyWith<_$CheckVerifyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckVerifyEmailImplCopyWith<$Res> {
  factory _$$CheckVerifyEmailImplCopyWith(_$CheckVerifyEmailImpl value,
          $Res Function(_$CheckVerifyEmailImpl) then) =
      __$$CheckVerifyEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String email, String code});
}

/// @nodoc
class __$$CheckVerifyEmailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckVerifyEmailImpl>
    implements _$$CheckVerifyEmailImplCopyWith<$Res> {
  __$$CheckVerifyEmailImplCopyWithImpl(_$CheckVerifyEmailImpl _value,
      $Res Function(_$CheckVerifyEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$CheckVerifyEmailImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckVerifyEmailImpl implements CheckVerifyEmail {
  const _$CheckVerifyEmailImpl(
      {required this.context, required this.email, required this.code});

  @override
  final BuildContext context;
  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthEvent.checkVerifyEmail(context: $context, email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckVerifyEmailImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, email, code);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckVerifyEmailImplCopyWith<_$CheckVerifyEmailImpl> get copyWith =>
      __$$CheckVerifyEmailImplCopyWithImpl<_$CheckVerifyEmailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return checkVerifyEmail(context, email, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return checkVerifyEmail?.call(context, email, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (checkVerifyEmail != null) {
      return checkVerifyEmail(context, email, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return checkVerifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return checkVerifyEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (checkVerifyEmail != null) {
      return checkVerifyEmail(this);
    }
    return orElse();
  }
}

abstract class CheckVerifyEmail implements AuthEvent {
  const factory CheckVerifyEmail(
      {required final BuildContext context,
      required final String email,
      required final String code}) = _$CheckVerifyEmailImpl;

  BuildContext get context;
  String get email;
  String get code;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckVerifyEmailImplCopyWith<_$CheckVerifyEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckPhoneImplCopyWith<$Res> {
  factory _$$CheckPhoneImplCopyWith(
          _$CheckPhoneImpl value, $Res Function(_$CheckPhoneImpl) then) =
      __$$CheckPhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String phone, VoidCallback? onSuccess});
}

/// @nodoc
class __$$CheckPhoneImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckPhoneImpl>
    implements _$$CheckPhoneImplCopyWith<$Res> {
  __$$CheckPhoneImplCopyWithImpl(
      _$CheckPhoneImpl _value, $Res Function(_$CheckPhoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? phone = null,
    Object? onSuccess = freezed,
  }) {
    return _then(_$CheckPhoneImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$CheckPhoneImpl implements CheckPhone {
  const _$CheckPhoneImpl(
      {required this.context, required this.phone, this.onSuccess});

  @override
  final BuildContext context;
  @override
  final String phone;
  @override
  final VoidCallback? onSuccess;

  @override
  String toString() {
    return 'AuthEvent.checkPhone(context: $context, phone: $phone, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPhoneImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, phone, onSuccess);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPhoneImplCopyWith<_$CheckPhoneImpl> get copyWith =>
      __$$CheckPhoneImplCopyWithImpl<_$CheckPhoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return checkPhone(context, phone, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return checkPhone?.call(context, phone, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (checkPhone != null) {
      return checkPhone(context, phone, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return checkPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return checkPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (checkPhone != null) {
      return checkPhone(this);
    }
    return orElse();
  }
}

abstract class CheckPhone implements AuthEvent {
  const factory CheckPhone(
      {required final BuildContext context,
      required final String phone,
      final VoidCallback? onSuccess}) = _$CheckPhoneImpl;

  BuildContext get context;
  String get phone;
  VoidCallback? get onSuccess;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckPhoneImplCopyWith<_$CheckPhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordImplCopyWith<$Res> {
  factory _$$ForgotPasswordImplCopyWith(_$ForgotPasswordImpl value,
          $Res Function(_$ForgotPasswordImpl) then) =
      __$$ForgotPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String email, VoidCallback? onSuccess});
}

/// @nodoc
class __$$ForgotPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordImpl>
    implements _$$ForgotPasswordImplCopyWith<$Res> {
  __$$ForgotPasswordImplCopyWithImpl(
      _$ForgotPasswordImpl _value, $Res Function(_$ForgotPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? email = null,
    Object? onSuccess = freezed,
  }) {
    return _then(_$ForgotPasswordImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordImpl implements ForgotPassword {
  const _$ForgotPasswordImpl(
      {required this.context, required this.email, this.onSuccess});

  @override
  final BuildContext context;
  @override
  final String email;
  @override
  final VoidCallback? onSuccess;

  @override
  String toString() {
    return 'AuthEvent.forgotPassword(context: $context, email: $email, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, email, onSuccess);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      __$$ForgotPasswordImplCopyWithImpl<_$ForgotPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return forgotPassword(context, email, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return forgotPassword?.call(context, email, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(context, email, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class ForgotPassword implements AuthEvent {
  const factory ForgotPassword(
      {required final BuildContext context,
      required final String email,
      final VoidCallback? onSuccess}) = _$ForgotPasswordImpl;

  BuildContext get context;
  String get email;
  VoidCallback? get onSuccess;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordConfirmImplCopyWith<$Res> {
  factory _$$ForgotPasswordConfirmImplCopyWith(
          _$ForgotPasswordConfirmImpl value,
          $Res Function(_$ForgotPasswordConfirmImpl) then) =
      __$$ForgotPasswordConfirmImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      String email,
      String code,
      VoidCallback? onSuccess});
}

/// @nodoc
class __$$ForgotPasswordConfirmImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordConfirmImpl>
    implements _$$ForgotPasswordConfirmImplCopyWith<$Res> {
  __$$ForgotPasswordConfirmImplCopyWithImpl(_$ForgotPasswordConfirmImpl _value,
      $Res Function(_$ForgotPasswordConfirmImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? email = null,
    Object? code = null,
    Object? onSuccess = freezed,
  }) {
    return _then(_$ForgotPasswordConfirmImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordConfirmImpl implements ForgotPasswordConfirm {
  const _$ForgotPasswordConfirmImpl(
      {required this.context,
      required this.email,
      required this.code,
      this.onSuccess});

  @override
  final BuildContext context;
  @override
  final String email;
  @override
  final String code;
  @override
  final VoidCallback? onSuccess;

  @override
  String toString() {
    return 'AuthEvent.forgotPasswordConfirm(context: $context, email: $email, code: $code, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordConfirmImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, email, code, onSuccess);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordConfirmImplCopyWith<_$ForgotPasswordConfirmImpl>
      get copyWith => __$$ForgotPasswordConfirmImplCopyWithImpl<
          _$ForgotPasswordConfirmImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return forgotPasswordConfirm(context, email, code, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return forgotPasswordConfirm?.call(context, email, code, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (forgotPasswordConfirm != null) {
      return forgotPasswordConfirm(context, email, code, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return forgotPasswordConfirm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return forgotPasswordConfirm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (forgotPasswordConfirm != null) {
      return forgotPasswordConfirm(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordConfirm implements AuthEvent {
  const factory ForgotPasswordConfirm(
      {required final BuildContext context,
      required final String email,
      required final String code,
      final VoidCallback? onSuccess}) = _$ForgotPasswordConfirmImpl;

  BuildContext get context;
  String get email;
  String get code;
  VoidCallback? get onSuccess;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordConfirmImplCopyWith<_$ForgotPasswordConfirmImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordAfterImplCopyWith<$Res> {
  factory _$$ForgotPasswordAfterImplCopyWith(_$ForgotPasswordAfterImpl value,
          $Res Function(_$ForgotPasswordAfterImpl) then) =
      __$$ForgotPasswordAfterImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      String phone,
      String password,
      VoidCallback? onSuccess});
}

/// @nodoc
class __$$ForgotPasswordAfterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordAfterImpl>
    implements _$$ForgotPasswordAfterImplCopyWith<$Res> {
  __$$ForgotPasswordAfterImplCopyWithImpl(_$ForgotPasswordAfterImpl _value,
      $Res Function(_$ForgotPasswordAfterImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? phone = null,
    Object? password = null,
    Object? onSuccess = freezed,
  }) {
    return _then(_$ForgotPasswordAfterImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: freezed == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordAfterImpl implements ForgotPasswordAfter {
  const _$ForgotPasswordAfterImpl(
      {required this.context,
      required this.phone,
      required this.password,
      this.onSuccess});

  @override
  final BuildContext context;
  @override
  final String phone;
  @override
  final String password;
  @override
  final VoidCallback? onSuccess;

  @override
  String toString() {
    return 'AuthEvent.forgotPasswordAfter(context: $context, phone: $phone, password: $password, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordAfterImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, phone, password, onSuccess);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordAfterImplCopyWith<_$ForgotPasswordAfterImpl> get copyWith =>
      __$$ForgotPasswordAfterImplCopyWithImpl<_$ForgotPasswordAfterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return forgotPasswordAfter(context, phone, password, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return forgotPasswordAfter?.call(context, phone, password, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (forgotPasswordAfter != null) {
      return forgotPasswordAfter(context, phone, password, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return forgotPasswordAfter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return forgotPasswordAfter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (forgotPasswordAfter != null) {
      return forgotPasswordAfter(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordAfter implements AuthEvent {
  const factory ForgotPasswordAfter(
      {required final BuildContext context,
      required final String phone,
      required final String password,
      final VoidCallback? onSuccess}) = _$ForgotPasswordAfterImpl;

  BuildContext get context;
  String get phone;
  String get password;
  VoidCallback? get onSuccess;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordAfterImplCopyWith<_$ForgotPasswordAfterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingChangeImplCopyWith<$Res> {
  factory _$$LoadingChangeImplCopyWith(
          _$LoadingChangeImpl value, $Res Function(_$LoadingChangeImpl) then) =
      __$$LoadingChangeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingChangeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoadingChangeImpl>
    implements _$$LoadingChangeImplCopyWith<$Res> {
  __$$LoadingChangeImplCopyWithImpl(
      _$LoadingChangeImpl _value, $Res Function(_$LoadingChangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingChangeImpl implements LoadingChange {
  const _$LoadingChangeImpl();

  @override
  String toString() {
    return 'AuthEvent.loadingChange()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingChangeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return loadingChange();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return loadingChange?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (loadingChange != null) {
      return loadingChange();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return loadingChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return loadingChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (loadingChange != null) {
      return loadingChange(this);
    }
    return orElse();
  }
}

abstract class LoadingChange implements AuthEvent {
  const factory LoadingChange() = _$LoadingChangeImpl;
}

/// @nodoc
abstract class _$$AcceptTermImplCopyWith<$Res> {
  factory _$$AcceptTermImplCopyWith(
          _$AcceptTermImpl value, $Res Function(_$AcceptTermImpl) then) =
      __$$AcceptTermImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AcceptTermImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AcceptTermImpl>
    implements _$$AcceptTermImplCopyWith<$Res> {
  __$$AcceptTermImplCopyWithImpl(
      _$AcceptTermImpl _value, $Res Function(_$AcceptTermImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AcceptTermImpl implements AcceptTerm {
  const _$AcceptTermImpl();

  @override
  String toString() {
    return 'AuthEvent.acceptTerm()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AcceptTermImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        login,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUp,
    required TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)
        signUpWithData,
    required TResult Function(BuildContext context, String email) signUpEmail,
    required TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)
        socialSignIn,
    required TResult Function(String id) setVerificationId,
    required TResult Function() showPassword,
    required TResult Function() showConfirmPassword,
    required TResult Function(AuthType type) switchScreen,
    required TResult Function(
            BuildContext context, String verifyId, String code, bool? editPhone)
        checkVerify,
    required TResult Function(BuildContext context, String email, String code)
        checkVerifyEmail,
    required TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)
        checkPhone,
    required TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)
        forgotPassword,
    required TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)
        forgotPasswordConfirm,
    required TResult Function(BuildContext context, String phone,
            String password, VoidCallback? onSuccess)
        forgotPasswordAfter,
    required TResult Function() loadingChange,
    required TResult Function() acceptTerm,
  }) {
    return acceptTerm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult? Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult? Function(BuildContext context, String email)? signUpEmail,
    TResult? Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult? Function(String id)? setVerificationId,
    TResult? Function()? showPassword,
    TResult? Function()? showConfirmPassword,
    TResult? Function(AuthType type)? switchScreen,
    TResult? Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult? Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult? Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult? Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult? Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult? Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult? Function()? loadingChange,
    TResult? Function()? acceptTerm,
  }) {
    return acceptTerm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        login,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String email,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUp,
    TResult Function(
            BuildContext context,
            String firstname,
            String lastname,
            String phone,
            String password,
            String referral,
            VoidCallback? onSuccess)?
        signUpWithData,
    TResult Function(BuildContext context, String email)? signUpEmail,
    TResult Function(
            BuildContext context, IconData type, VoidCallback? onSuccess)?
        socialSignIn,
    TResult Function(String id)? setVerificationId,
    TResult Function()? showPassword,
    TResult Function()? showConfirmPassword,
    TResult Function(AuthType type)? switchScreen,
    TResult Function(BuildContext context, String verifyId, String code,
            bool? editPhone)?
        checkVerify,
    TResult Function(BuildContext context, String email, String code)?
        checkVerifyEmail,
    TResult Function(
            BuildContext context, String phone, VoidCallback? onSuccess)?
        checkPhone,
    TResult Function(
            BuildContext context, String email, VoidCallback? onSuccess)?
        forgotPassword,
    TResult Function(BuildContext context, String email, String code,
            VoidCallback? onSuccess)?
        forgotPasswordConfirm,
    TResult Function(BuildContext context, String phone, String password,
            VoidCallback? onSuccess)?
        forgotPasswordAfter,
    TResult Function()? loadingChange,
    TResult Function()? acceptTerm,
    required TResult orElse(),
  }) {
    if (acceptTerm != null) {
      return acceptTerm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
    required TResult Function(SignUp value) signUp,
    required TResult Function(SignUpWithData value) signUpWithData,
    required TResult Function(SignUpEmail value) signUpEmail,
    required TResult Function(SocialSignIn value) socialSignIn,
    required TResult Function(SetVerificationId value) setVerificationId,
    required TResult Function(ShowPassword value) showPassword,
    required TResult Function(ShowConfirmPassword value) showConfirmPassword,
    required TResult Function(SwitchScreen value) switchScreen,
    required TResult Function(CheckVerify value) checkVerify,
    required TResult Function(CheckVerifyEmail value) checkVerifyEmail,
    required TResult Function(CheckPhone value) checkPhone,
    required TResult Function(ForgotPassword value) forgotPassword,
    required TResult Function(ForgotPasswordConfirm value)
        forgotPasswordConfirm,
    required TResult Function(ForgotPasswordAfter value) forgotPasswordAfter,
    required TResult Function(LoadingChange value) loadingChange,
    required TResult Function(AcceptTerm value) acceptTerm,
  }) {
    return acceptTerm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Login value)? login,
    TResult? Function(SignUp value)? signUp,
    TResult? Function(SignUpWithData value)? signUpWithData,
    TResult? Function(SignUpEmail value)? signUpEmail,
    TResult? Function(SocialSignIn value)? socialSignIn,
    TResult? Function(SetVerificationId value)? setVerificationId,
    TResult? Function(ShowPassword value)? showPassword,
    TResult? Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult? Function(SwitchScreen value)? switchScreen,
    TResult? Function(CheckVerify value)? checkVerify,
    TResult? Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult? Function(CheckPhone value)? checkPhone,
    TResult? Function(ForgotPassword value)? forgotPassword,
    TResult? Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult? Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult? Function(LoadingChange value)? loadingChange,
    TResult? Function(AcceptTerm value)? acceptTerm,
  }) {
    return acceptTerm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    TResult Function(SignUp value)? signUp,
    TResult Function(SignUpWithData value)? signUpWithData,
    TResult Function(SignUpEmail value)? signUpEmail,
    TResult Function(SocialSignIn value)? socialSignIn,
    TResult Function(SetVerificationId value)? setVerificationId,
    TResult Function(ShowPassword value)? showPassword,
    TResult Function(ShowConfirmPassword value)? showConfirmPassword,
    TResult Function(SwitchScreen value)? switchScreen,
    TResult Function(CheckVerify value)? checkVerify,
    TResult Function(CheckVerifyEmail value)? checkVerifyEmail,
    TResult Function(CheckPhone value)? checkPhone,
    TResult Function(ForgotPassword value)? forgotPassword,
    TResult Function(ForgotPasswordConfirm value)? forgotPasswordConfirm,
    TResult Function(ForgotPasswordAfter value)? forgotPasswordAfter,
    TResult Function(LoadingChange value)? loadingChange,
    TResult Function(AcceptTerm value)? acceptTerm,
    required TResult orElse(),
  }) {
    if (acceptTerm != null) {
      return acceptTerm(this);
    }
    return orElse();
  }
}

abstract class AcceptTerm implements AuthEvent {
  const factory AcceptTerm() = _$AcceptTermImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isShowPassword => throw _privateConstructorUsedError;
  bool get isShowConfirmPassword => throw _privateConstructorUsedError;
  AuthType get screenType => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isReset => throw _privateConstructorUsedError;
  bool get isAcceptTerm => throw _privateConstructorUsedError;
  String get verificationId => throw _privateConstructorUsedError;
  String get timerText => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isShowPassword,
      bool isShowConfirmPassword,
      AuthType screenType,
      bool isError,
      bool isReset,
      bool isAcceptTerm,
      String verificationId,
      String timerText});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isShowPassword = null,
    Object? isShowConfirmPassword = null,
    Object? screenType = null,
    Object? isError = null,
    Object? isReset = null,
    Object? isAcceptTerm = null,
    Object? verificationId = null,
    Object? timerText = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowPassword: null == isShowPassword
          ? _value.isShowPassword
          : isShowPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowConfirmPassword: null == isShowConfirmPassword
          ? _value.isShowConfirmPassword
          : isShowConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      screenType: null == screenType
          ? _value.screenType
          : screenType // ignore: cast_nullable_to_non_nullable
              as AuthType,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isReset: null == isReset
          ? _value.isReset
          : isReset // ignore: cast_nullable_to_non_nullable
              as bool,
      isAcceptTerm: null == isAcceptTerm
          ? _value.isAcceptTerm
          : isAcceptTerm // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      timerText: null == timerText
          ? _value.timerText
          : timerText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isShowPassword,
      bool isShowConfirmPassword,
      AuthType screenType,
      bool isError,
      bool isReset,
      bool isAcceptTerm,
      String verificationId,
      String timerText});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isShowPassword = null,
    Object? isShowConfirmPassword = null,
    Object? screenType = null,
    Object? isError = null,
    Object? isReset = null,
    Object? isAcceptTerm = null,
    Object? verificationId = null,
    Object? timerText = null,
  }) {
    return _then(_$AuthStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowPassword: null == isShowPassword
          ? _value.isShowPassword
          : isShowPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      isShowConfirmPassword: null == isShowConfirmPassword
          ? _value.isShowConfirmPassword
          : isShowConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      screenType: null == screenType
          ? _value.screenType
          : screenType // ignore: cast_nullable_to_non_nullable
              as AuthType,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isReset: null == isReset
          ? _value.isReset
          : isReset // ignore: cast_nullable_to_non_nullable
              as bool,
      isAcceptTerm: null == isAcceptTerm
          ? _value.isAcceptTerm
          : isAcceptTerm // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      timerText: null == timerText
          ? _value.timerText
          : timerText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {this.isLoading = false,
      this.isShowPassword = false,
      this.isShowConfirmPassword = false,
      this.screenType = AuthType.login,
      this.isError = false,
      this.isReset = false,
      this.isAcceptTerm = false,
      this.verificationId = "",
      this.timerText = '05:00'});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isShowPassword;
  @override
  @JsonKey()
  final bool isShowConfirmPassword;
  @override
  @JsonKey()
  final AuthType screenType;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final bool isReset;
  @override
  @JsonKey()
  final bool isAcceptTerm;
  @override
  @JsonKey()
  final String verificationId;
  @override
  @JsonKey()
  final String timerText;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, isShowPassword: $isShowPassword, isShowConfirmPassword: $isShowConfirmPassword, screenType: $screenType, isError: $isError, isReset: $isReset, isAcceptTerm: $isAcceptTerm, verificationId: $verificationId, timerText: $timerText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isShowPassword, isShowPassword) ||
                other.isShowPassword == isShowPassword) &&
            (identical(other.isShowConfirmPassword, isShowConfirmPassword) ||
                other.isShowConfirmPassword == isShowConfirmPassword) &&
            (identical(other.screenType, screenType) ||
                other.screenType == screenType) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isReset, isReset) || other.isReset == isReset) &&
            (identical(other.isAcceptTerm, isAcceptTerm) ||
                other.isAcceptTerm == isAcceptTerm) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.timerText, timerText) ||
                other.timerText == timerText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isShowPassword,
      isShowConfirmPassword,
      screenType,
      isError,
      isReset,
      isAcceptTerm,
      verificationId,
      timerText);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final bool isLoading,
      final bool isShowPassword,
      final bool isShowConfirmPassword,
      final AuthType screenType,
      final bool isError,
      final bool isReset,
      final bool isAcceptTerm,
      final String verificationId,
      final String timerText}) = _$AuthStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isShowPassword;
  @override
  bool get isShowConfirmPassword;
  @override
  AuthType get screenType;
  @override
  bool get isError;
  @override
  bool get isReset;
  @override
  bool get isAcceptTerm;
  @override
  String get verificationId;
  @override
  String get timerText;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
