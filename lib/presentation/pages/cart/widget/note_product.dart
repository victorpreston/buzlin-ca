import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/application/cart/cart_bloc.dart';
import 'package:demand/domain/model/response/cart_response.dart';
import 'package:demand/infrastructure/service/services.dart';
import 'package:demand/infrastructure/local_storage/local_storage.dart';

import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';
import 'package:demand/presentation/style/theme/theme_wrapper.dart';

class NoteProduct extends StatefulWidget {
  final CartDetailProduct? cartItem;
  final String? note;

  const NoteProduct({super.key, required this.cartItem, required this.note});

  @override
  State<NoteProduct> createState() => _NoteProductState();
}

class _NoteProductState extends State<NoteProduct> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: widget.note);
    super.initState();
  }

  @override
  void deactivate() {
    controller.dispose();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (colors, c) {
      return KeyboardDismisser(
        isLtr: LocalStorage.getLangLtr(),
        child: Container(
          margin: MediaQuery.of(context).viewInsets,
          padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 16.r),
          width: double.infinity,
          decoration: BoxDecoration(
            color: colors.backgroundColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24.r),
              topLeft: Radius.circular(24.r),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppHelpers.getTranslation(TrKeys.commentForProduct),
                  style:
                      CustomStyle.interSemi(color: colors.textBlack, size: 22),
                ),
                30.verticalSpace,
                _productInfo(colors),
                24.verticalSpace,
                Form(
                  key: _formKey,
                  child: CustomTextFormField(
                    hint: AppHelpers.getTranslation(TrKeys.commentForProduct),
                    controller: controller,
                    validation: AppValidators.isNotEmptyValidator,
                  ),
                ),
                24.verticalSpace,
                CustomButton(
                    title: AppHelpers.getTranslation(TrKeys.save),
                    bgColor: colors.primary,
                    titleColor: colors.white,
                    onTap: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        context.read<CartBloc>().add(CartEvent.setNotes(
                            stockId: widget.cartItem?.stocks?.id ?? 0,
                            note: controller.text));
                        Navigator.pop(context);
                      }
                    }),
                24.verticalSpace,
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget _productInfo(CustomColorSet colors) {
    return Row(
      children: [
        CustomNetworkImage(
            url: widget.cartItem?.stocks?.product?.img ?? "",
            height: 56,
            width: 56,
            radius: 4),
        16.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.cartItem?.stocks?.product?.translation?.title ?? "",
              style: CustomStyle.interNormal(color: colors.textBlack, size: 14),
            ),
            4.verticalSpace,
            Text(
              AppHelpers.numberFormat(number: widget.cartItem?.price ?? 0),
              style: CustomStyle.interBold(color: colors.textBlack, size: 16),
            ),
          ],
        )
      ],
    );
  }
}
