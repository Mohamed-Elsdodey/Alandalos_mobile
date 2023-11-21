import 'package:flutter/material.dart';
import 'package:school/core/utils/constants.dart';
import 'package:school/core/utils/helper.dart';
import 'package:school/core/widgets/custom_simple_app_bar.dart';

import '../../../../core/utils/assets.dart';
import '../widgets/notification_list_body.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSimpleAppBar(
          isNav: true,
          backgroundColor: kBackGroundColor,
          appBarTitle: "",
          leadingWidget: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.screenWidth * .07,
            ),
            child: Row(
              children: [
                PopupMenuButton(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  offset: Offset(0, context.screenHeight * .05),
                  // color: Colors.black,
                  child: Image.asset(AssetsData.dotsIcon),
                  //padding: EdgeInsets.all(10),
                  //  position: PopupMenuPosition.values,
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                          child: Text(
                        context.locale.translate("mute")!,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 0.36,
                        ),
                      )),
                      PopupMenuItem(
                          child: Text(
                        context.locale.translate("delete_all_notifications")!,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          //   letterSpacing: 0.36,
                        ),
                      ))
                    ];
                  },
                ),
                SizedBox(
                  width: context.screenWidth * .3,
                ),
                Text(
                  context.locale.translate("notifications")!,
                  style: TextStyle(
                      fontSize: context.screenWidth * .04,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.51,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ),
        const NotificationListBodyWidget()
      ],
    );
  }
}
