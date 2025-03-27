// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:app_tracking_transparency/app_tracking_transparency.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:demand/domain/model/model/shop_model.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/presentation/components/join_dialog.dart';
import 'package:demand/presentation/route/app_route_shop.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

abstract class FirebaseService {
  FirebaseService._();

  static final FirebaseFirestore store = FirebaseFirestore.instance;

  static Future<String> getFcmToken() async {
    final firebaseM = FirebaseMessaging.instance;
    firebaseM.requestPermission(
      sound: true,
      alert: true,
      badge: false,
    );
    return await firebaseM.getToken() ?? "";
  }

  static Future<Either<UserCredential, dynamic>> socialGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    googleSignIn.disconnect();

    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      final GoogleSignInAuthentication? googleSignInAuthentication =
          await googleSignInAccount?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication?.accessToken,
          idToken: googleSignInAuthentication?.idToken);

      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      return left(userCredential);
    } catch (e) {
      return right(e.toString());
    }
  }

  static Future<Either<UserCredential, dynamic>> socialFacebook() async {
    final fb = FacebookAuth.instance;
    try {
      TrackingStatus? status;
      if (Platform.isIOS) {
        final permission = await Permission.appTrackingTransparency.request();
        status = await AppTrackingTransparency.trackingAuthorizationStatus;
        debugPrint("permission $permission");
        debugPrint("status: $status");
      }
      final user = await fb.login(
        loginTracking: status == TrackingStatus.authorized
            ? LoginTracking.enabled
            : LoginTracking.limited,
        loginBehavior: LoginBehavior.nativeWithFallback,
      );
      final rawNonce = AppHelpers.generateNonce();
      final OAuthCredential credential =
          user.accessToken?.type == AccessTokenType.limited
              ? OAuthCredential(
                  providerId: 'facebook.com',
                  signInMethod: 'oauth',
                  idToken: user.accessToken!.tokenString,
                  rawNonce: rawNonce,
                )
              : FacebookAuthProvider.credential(
                  user.accessToken?.tokenString ?? "");

      final userObj =
          await FirebaseAuth.instance.signInWithCredential(credential);
      return left(userObj);
    } catch (e) {
      return right(e.toString());
    }
  }

  static Future<Either<UserCredential, dynamic>> socialApple() async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      OAuthProvider oAuthProvider = OAuthProvider("apple.com");
      final AuthCredential credentialApple = oAuthProvider.credential(
        idToken: credential.identityToken,
        accessToken: credential.authorizationCode,
      );

      final userObj =
          await FirebaseAuth.instance.signInWithCredential(credentialApple);
      return left(userObj);
    } catch (e) {
      return right(e.toString());
    }
  }

  static sendCode(
      {required String phone,
      required ValueChanged<String> onSuccess,
      required ValueChanged<String> onError}) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {
        onError(e.message ?? '');
      },
      codeSent: (String verificationId, int? resendToken) {
        onSuccess(verificationId);
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  static Future<Either<UserCredential, dynamic>> checkCode(
      {required String verificationId, required String code}) async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: code,
      );

      final user = await FirebaseAuth.instance.signInWithCredential(credential);
      return left(user);
    } catch (e) {
      return right(e.toString());
    }
  }

  static Future<void> initDynamicLinks(BuildContext context,
      {bool isMain = false}) async {
    final FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instance;

    dynamicLinks.onLink.listen((dynamicLinkData) {
      String link = dynamicLinkData.link.toString();
      if (link.contains("group")) {
        showJoin(context, link.toString());
      }
      if (link.contains("shop_id")) {
        AppRouteShop.goShopPage(
          context: context,
          shop: ShopData(
            id: int.tryParse(
              link.substring(link.indexOf('shop_id=') + 8),
            ),
          ),
        );
      }
    }).onError((error) {
      debugPrint(error.message);
    });

    final PendingDynamicLinkData? data =
        await FirebaseDynamicLinks.instance.getInitialLink();
    final Uri? deepLink = data?.link;
    if (deepLink.toString().contains("group")) {
      showJoin(context, deepLink.toString());
    }
  }

  static showJoin(BuildContext context, String link) {
    AppHelpers.showCustomDialog(
        context: context,
        content: JoinDialog(
          link: link,
        ));
  }
}
