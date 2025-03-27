import 'package:demand/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:demand/domain/model/model/chat_model.dart';
import 'package:demand/infrastructure/service/services.dart';

import 'package:demand/presentation/components/components.dart';

import 'package:demand/presentation/style/style.dart';
import 'package:demand/presentation/style/theme/theme.dart';

class ChatItem extends StatelessWidget {
  final CustomColorSet colors;
  final ChatModel chat;

  const ChatItem({super.key, required this.colors, required this.chat});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.r),
      padding: EdgeInsets.symmetric(vertical: 10.r, horizontal: 16.r),
      decoration: BoxDecoration(
        color: colors.newBoxColor,
        borderRadius: BorderRadius.circular(AppConstants.radius.r),
      ),
      child: Row(
        children: [
          CustomNetworkImage(
            url: chat.user?.img ?? "",
            height: 56,
            width: 56,
            radius: 28,
            name: chat.user?.firstname ?? chat.user?.lastname,
          ),
          16.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width - 250.r,
                child: Text(
                  "${chat.user?.firstname ?? ""} ${chat.user?.lastname ?? ""}",
                  style: CustomStyle.interNormal(color: colors.textBlack),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              6.verticalSpace,
              SizedBox(
                  width: MediaQuery.sizeOf(context).width - 250.r,
                  child: Text(
                    chat.lastMessage ?? "",
                    style: CustomStyle.interRegular(
                        color: colors.textHint, size: 14),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )),
            ],
          ),
          const Spacer(),
          Text(TimeService.dateFormatForChat(chat.lastTime?.toDate())),
        ],
      ),
    );
  }
}
