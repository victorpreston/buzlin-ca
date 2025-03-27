import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/presentation/components/components.dart';

import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';

import 'shimmer_list.dart';

class SearchItem extends StatelessWidget {
  final String title;
  final String query;
  final bool isLoading;
  final bool isBrand;
  final CustomColorSet colors;
  final List list;
  final ValueSetter<int> onTap;

  const SearchItem(
      {super.key,
      required this.title,
      required this.colors,
      required this.list,
      required this.onTap,
      required this.isLoading,
      required this.query,
      this.isBrand = false});

  @override
  Widget build(BuildContext context) {
    return list.isNotEmpty || isLoading
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              12.verticalSpace,
              Text(
                AppHelpers.getTranslation(title),
                style:
                    CustomStyle.interNormal(color: colors.textBlack, size: 16),
              ),
              8.verticalSpace,
              isLoading
                  ? ShimmerList(
                      colors: colors,
                    )
                  : ListView.builder(
                      itemBuilder: (context, index) {
                        return ButtonEffectAnimation(
                          onTap: () {
                            onTap.call(index);
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  if (title == TrKeys.shops)
                                    Padding(
                                      padding: EdgeInsets.only(right: 16.r),
                                      child: CustomNetworkImage(
                                          url: list[index].logoImg,
                                          height: 36,
                                          width: 36),
                                    ),
                                  if (title == TrKeys.products)
                                    Padding(
                                      padding: EdgeInsets.only(right: 16.r),
                                      child: CustomNetworkImage(
                                          url: list[index].img,
                                          height: 42,
                                          width: 42),
                                    ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppHelpers.getSearchResultText(
                                            isBrand
                                                ? list[index].title
                                                : list[index]
                                                        .translation
                                                        ?.title ??
                                                    "",
                                            query,
                                            colors),
                                        if (title == TrKeys.shops)
                                          AppHelpers.getSearchResultText(
                                              list[index]
                                                      .translation
                                                      ?.description ??
                                                  "",
                                              query,
                                              colors,
                                              maxLine: 1),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                color: colors.textHint,
                              )
                            ],
                          ),
                        );
                      },
                      itemCount: list.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                    )
            ],
          )
        : const SizedBox.shrink();
  }
}
