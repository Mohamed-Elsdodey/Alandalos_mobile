import 'package:flutter/material.dart';
import 'package:school/Features/notifications/presentation/widgets/notification_item.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../core/utils/constants.dart';

class NotificationListBodyWidget extends StatelessWidget {
  const NotificationListBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(
            left: context.screenWidth * .05,
            right: context.screenWidth * .05,
            top: context.screenHeight * 0,
          ),
          color: kBackGroundColor,
          child: ListView.builder(
            padding: EdgeInsets.only(top: 20),
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return const NotificationItemWidget();
            },
          )),
    );
  }
}
