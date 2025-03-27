import 'package:demand/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/filter/filter_bloc.dart';
import 'package:demand/domain/model/response/filter_response.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/presentation/components/components.dart';

import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';

class BrandScreen extends StatelessWidget {
  final CustomColorSet colors;
  final List<Brand> brandes;
  final List<int> list;

  const BrandScreen(
      {super.key,
      required this.colors,
      required this.brandes,
      required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      width: double.infinity,
      decoration: BoxDecoration(
        color: colors.newBoxColor,
        borderRadius: BorderRadius.circular(AppConstants.radius.r),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
            dividerColor: CustomStyle.transparent,
            primaryColor: colors.textBlack,
            colorScheme: Theme.of(context).colorScheme.copyWith(
                secondary: colors.textBlack, primary: colors.textBlack)),
        child: ExpansionTile(
          title: Text(
            AppHelpers.getTranslation(TrKeys.brandes),
            style: CustomStyle.interNoSemi(color: colors.textBlack, size: 16),
          ),
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Wrap(
                children: brandes
                    .map((e) => InkWell(
                          onTap: () {
                            context.read<FilterBloc>()
                              ..add(FilterEvent.setBrands(id: e.id ?? 0))
                              ..add(FilterEvent.fetchExtras(
                                  context: context, isPrice: true));
                          },
                          child: Container(
                            margin: EdgeInsets.all(4.r),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                border: Border.all(
                                    color: list.contains(e.id)
                                        ? colors.primary
                                        : colors.icon)),
                            child: CustomNetworkImage(
                                url: e.image ?? "",
                                height: 50,
                                width: 50,
                                fit: BoxFit.contain,
                                radius: 8),
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
