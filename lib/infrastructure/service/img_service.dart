import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/domain/model/model/product_model.dart';
import 'package:demand/domain/model/model/review_data.dart';
import 'package:demand/presentation/components/components.dart';
import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme_wrapper.dart';
import 'package:image_picker/image_picker.dart';

import 'helper.dart';
import 'tr_keys.dart';

abstract class ImgService {
  ImgService._();

  static Future getGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      return image.path;
    }
    return null;
  }

  static Future getCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      return image.path;
    }
    return null;
  }

  static Galleries? checkIfImage(String? value, List<Stocks>? stocks) {
    Galleries? galleries;
    stocks?.forEach((element) {
      element.extras?.forEach((e) {
        if (e.value == value) {
          if (element.galleries?.isNotEmpty ?? false) {
            galleries = element.galleries?.first;
            return;
          }
        }
      });
    });
    return galleries;
  }


  static openDialogImagePicker({
    required BuildContext context,
    required VoidCallback openCamera,
    required VoidCallback openGallery,
  }) {
    return showDialog(
      context: context,
      builder: (_) {
        return ThemeWrapper(
          builder: (colors, controller) {
            return Dialog(
              backgroundColor: colors.transparent,
              insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                margin: EdgeInsets.all(24.w),
                width: double.infinity,
                padding: EdgeInsets.all(24.w),
                decoration: BoxDecoration(
                  color: colors.backgroundColor,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      AppHelpers.getTranslation(TrKeys.selectPhoto),
                      textAlign: TextAlign.center,
                      style: CustomStyle.interNormal(
                          color: colors.textBlack, size: 18),
                    ),
                    const Divider(),
                    8.verticalSpace,
                    ButtonEffectAnimation(
                      onTap: openCamera,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.r, vertical: 8.r),
                        child: Row(
                          children: [
                            Icon(
                              FlutterRemix.camera_lens_line,
                              color: colors.textBlack,
                            ),
                            4.horizontalSpace,
                            Text(
                              AppHelpers.getTranslation(TrKeys.takePhoto),
                              textAlign: TextAlign.center,
                              style: CustomStyle.interNormal(
                                  color: colors.textBlack, size: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    8.verticalSpace,
                    ButtonEffectAnimation(
                      onTap: openGallery,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.r, vertical: 8.r),
                        child: Row(
                          children: [
                            Icon(
                              FlutterRemix.gallery_line,
                              color: colors.textBlack,
                            ),
                            4.horizontalSpace,
                            Text(
                              AppHelpers.getTranslation(TrKeys.chooseFromLibrary),
                              textAlign: TextAlign.center,
                              style: CustomStyle.interNormal(
                                  color: colors.textBlack, size: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  static Future getFilePdf(ValueChanged<String> onChange) async {
    FilePickerResult? file;
    try {
      file = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );
    } catch (ex) {
      debugPrint('===> trying to select file $ex');
    }
    if (file?.paths.isNotEmpty ?? false) {
      onChange.call(file?.paths.first ?? '');
    }
  }

}
