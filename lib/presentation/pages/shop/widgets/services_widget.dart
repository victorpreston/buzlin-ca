import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/service/service_bloc.dart';
import 'package:demand/domain/model/response/categories_paginate_response.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/route/app_route_service.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ServicesWidget extends StatefulWidget {
  final CustomColorSet colors;
  final int shopId;

  const ServicesWidget({super.key, required this.colors, required this.shopId});

  @override
  State<ServicesWidget> createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {
  late RefreshController refreshController;

  @override
  void initState() {
    refreshController = RefreshController();
    super.initState();
  }

  @override
  void dispose() {
    refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        24.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Text(
            AppHelpers.getTranslation(TrKeys.servicesOffered),
            style: CustomStyle.interNoSemi(
                color: widget.colors.textBlack, size: 22),
          ),
        ),
        20.verticalSpace,
        BlocBuilder<ServiceBloc, ServiceState>(
          builder: (context, state) {
            return SizedBox(
              height: 40.r,
              child: SmartRefresher(
                controller: refreshController,
                scrollDirection: Axis.horizontal,
                enablePullUp: true,
                enablePullDown: false,
                onLoading: () {
                  context
                      .read<ServiceBloc>()
                      .add(ServiceEvent.fetchCategoryServices(
                        context: context,
                        controller: refreshController,
                      ));
                },
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 16.r),
                    scrollDirection: Axis.horizontal,
                    itemCount: state.categoryServices.length + 1,
                    itemBuilder: (context, index) {
                      return index == 0
                          ? ButtonEffectAnimation(
                              onTap: () {
                                context.read<ServiceBloc>().add(
                                    const ServiceEvent.selectServiceCategory(
                                        category: null));
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 10.r),
                                padding: EdgeInsets.symmetric(horizontal: 16.r),
                                height: 40.r,
                                decoration: BoxDecoration(
                                  color: state.selectCategory == null
                                      ? widget.colors.textBlack
                                      : widget.colors.transparent,
                                  border: Border.all(
                                      color: widget.colors.textBlack),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      AppHelpers.getTranslation(TrKeys.all),
                                      style: CustomStyle.interRegular(
                                          color: state.selectCategory == null
                                              ? widget.colors.textWhite
                                              : widget.colors.textBlack,
                                          size: 16),
                                    )
                                  ],
                                ),
                              ),
                            )
                          : ButtonEffectAnimation(
                              onTap: () {
                                AppRouteService.goServiceListPage(
                                    context: context,
                                    shopId: widget.shopId,
                                    categoryId:
                                        state.categoryServices[index - 1].id);
                              },
                              child: _categoryItem(
                                  category: state.categoryServices[index - 1],
                                  select: state.categoryServices[index - 1] ==
                                      state.selectCategory),
                            );
                    }),
              ),
            );
          },
        ),
        BlocBuilder<ServiceBloc, ServiceState>(
          builder: (context, state) {
            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 16.r),
                itemCount: state.services.length,
                itemBuilder: (context, index) {
                  return ServiceItem(
                    shopId: widget.shopId,
                    colors: widget.colors,
                    service: state.services[index],
                    bookButton: false,
                  );
                });
          },
        ),
        16.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: CustomButton(
              title: AppHelpers.getTranslation(TrKeys.viewAll),
              bgColor: widget.colors.transparent,
              titleColor: widget.colors.textBlack,
              borderColor: widget.colors.textBlack,
              onTap: () {
                AppRouteService.goServiceListPage(
                    context: context, shopId: widget.shopId);
              }),
        )
      ],
    );
  }

  Widget _categoryItem({required CategoryData category, required bool select}) {
    return Container(
      margin: EdgeInsets.only(right: 10.r),
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      height: 40.r,
      decoration: BoxDecoration(
        color: select ? widget.colors.textBlack : widget.colors.transparent,
        border: Border.all(color: widget.colors.textBlack),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          CustomNetworkImage(url: category.img ?? "", height: 20, width: 20),
          10.horizontalSpace,
          Text(
            category.translation?.title ?? "",
            style: CustomStyle.interRegular(
                color:
                    select ? widget.colors.textWhite : widget.colors.textBlack,
                size: 16),
          )
        ],
      ),
    );
  }
}
