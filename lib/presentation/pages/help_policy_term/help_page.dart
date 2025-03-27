import 'package:demand/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/profile/profile_bloc.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';
import 'package:demand/presentation/components/components.dart';

import 'package:demand/presentation/route/app_route.dart';
import 'package:demand/presentation/route/app_route_setting.dart';
import 'package:demand/presentation/style/style.dart';
import 'buzsupport_page.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: (colors) => SafeArea(
        child: Column(
          children: [
            Text(
              AppHelpers.getTranslation(TrKeys.helpInfo),
              style: CustomStyle.interNoSemi(color: colors.textBlack, size: 18),
            ),
            24.verticalSpace,
            BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return state.isHelpLoading
                    ? const Center(child: Loading())
                    : Expanded(
                        child: ListView.builder(
                            padding: EdgeInsets.symmetric(horizontal: 16.r),
                            shrinkWrap: true,
                            itemCount: state.helps.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 8.r),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.r, horizontal: 16.r),
                                decoration: BoxDecoration(
                                  color: colors.newBoxColor,
                                  borderRadius: BorderRadius.circular(AppConstants.radius.r),
                                ),
                                child: Theme(
                                  data: Theme.of(context).copyWith(
                                      dividerColor: colors.transparent),
                                  child: ExpansionTile(
                                    iconColor: colors.textHint,
                                    title: Text(
                                      state.helps[index].translation
                                              ?.question ??
                                          "",
                                      style: CustomStyle.interNormal(
                                          color: colors.textBlack, size: 14),
                                    ),
                                    children: [
                                      Text(
                                        state.helps[index].translation
                                                ?.answer ??
                                            "",
                                        style: CustomStyle.interNormal(
                                            color: colors.textBlack, size: 14),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      );
              },
            )
          ],
        ),
      ),
      floatingButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingButton: (colors) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        child: Row(
          children: [
            PopButton(colors: colors),
            const Spacer(),
            ButtonEffectAnimation(
              onTap: () {
                if (LocalStorage.getToken().isEmpty) {
                  AppRoute.goLogin(context);
                  return;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BuzSupportPage()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 22.r, horizontal: 28.r),
                decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      FlutterRemix.message_3_fill,
                      color: colors.white,
                    ),
                    10.horizontalSpace,
                    Text(
                      AppHelpers.getTranslation(TrKeys.onlineChat),
                      style: CustomStyle.interNoSemi(
                          color: CustomStyle.white, size: 16),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
