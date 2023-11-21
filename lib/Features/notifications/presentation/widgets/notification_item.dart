import 'package:flutter/material.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/utils/constants.dart';

class NotificationItemWidget extends StatelessWidget {
  const NotificationItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black)),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            radius: context.screenHeight * .03,
            child: Image.asset(
              AssetsData.bellIcon,
              color: kPrimaryColor,
            ),
          ),
          title: const Text(
            "يتم هنا وضع عنوان الإشعار",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.42,
                height: 2),
          ),
          subtitle: const Text(
            "يتم هنا كتابة محتوى الإشعار المراد عرضه مع كتابة التفاصيل أيضا",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
                color: Color(0xFF6C6A6A),
                fontSize: 12,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.36,
                height: 2),
          ),
        ),
      ),
    );
  }
}
