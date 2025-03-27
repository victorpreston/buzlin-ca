import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/category/category_bloc.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/pages/home/widgets/category_list.dart';
import 'package:demand/presentation/route/app_route.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'widgets/sub_category_list.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with SingleTickerProviderStateMixin {
  late RefreshController categoryRefresh;
  late RefreshController refreshController;
  final isLtr = LocalStorage.getLangLtr();

  @override
  void initState() {
    categoryRefresh = RefreshController();
    refreshController = RefreshController();
    super.initState();
  }

  @override
  void dispose() {
    categoryRefresh.dispose();
    refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: (colors) => SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(top: 8.r),
          child: Column(
            children: [
              Text(
                AppHelpers.getTranslation(TrKeys.categories),
                style:
                    CustomStyle.interNoSemi(color: colors.textBlack, size: 22),
              ),
              24.verticalSpace,
              _search(colors),
              Expanded(
                child: _categories(colors),
              )
            ],
          ),
        ),
      ),
      floatingButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingButton: (colors) => PopButton(colors: colors),
    );
  }

  Padding _search(CustomColorSet colors) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 50.r,
              child: CustomTextFormField(
                onTap: () {
                  AppRoute.goSearchPage(context: context);
                },
                readOnly: true,
                radius: 10,
                prefixIcon: const Icon(
                  FlutterRemix.search_2_line,
                  color: CustomStyle.textHint,
                ),
                hint: AppHelpers.getTranslation(TrKeys.search),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _categories(CustomColorSet colors) {
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: false,
      enablePullDown: true,
      onRefresh: () {
        context.read<CategoryBloc>().add(CategoryEvent.fetchCategory(
            context: context, controller: refreshController, isRefresh: true));
      },
      child: Column(
        children: [
          20.verticalSpace,
          CategoryList(
            categoryRefresh: categoryRefresh,
            colors: colors,
            onlyCategory: true,
          ),
          8.verticalSpace,
          const Divider(color: CustomStyle.textHint),
          const SubCategoryList(),
        ],
      ),
    );
  }
}
