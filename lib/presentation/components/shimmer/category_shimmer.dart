import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/presentation/components/components.dart';

import 'package:demand/presentation/style/style.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.r),
              child: AppHelpers.getType() == 0
                  ? SecondButton(
                      title: "      ",
                      bgColor: CustomStyle.shimmerBase,
                      titleColor: CustomStyle.transparent,
                      onTap: () {},
                    )
                  : AppHelpers.getType() == 1
                      ? Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CustomStyle.shimmerBase),
                        )
                      : Container(
                          height: 40,
                          width: 75,
                          decoration:
                              BoxDecoration(color: CustomStyle.shimmerBase),
                        ),
            );
          }),
    );
  }
}
