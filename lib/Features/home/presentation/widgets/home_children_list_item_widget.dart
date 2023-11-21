import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../core/utils/assets.dart';
import '../../../child_profile/presentaion/widgets/child_profile_screen_body.dart';
import 'custom_home_container.dart';

class HomeChildrenListItemWidget extends StatelessWidget {
  const HomeChildrenListItemWidget({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChildProfileScreenBody(),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomHomeContainer(
          color: color,
          height: context.screenHeight * 0.28,
          width: context.screenWidth * 0.1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: context.screenHeight * .05,
                backgroundImage: const AssetImage(AssetsData.childImage),
              ),
              SizedBox(
                height: context.screenHeight * 0.01,
              ),
              Text(
                "أحمد محمد أحمد",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: context.screenWidth * 0.03,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: context.screenHeight * .009,
              ),
              Text(
                " الثامن 12 ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: context.screenWidth * 0.028,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${context.locale.translate("ranking_of_the_school")!} : ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth * 0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    " (25) ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth * 0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.screenHeight * .009,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${context.locale.translate('ranking_of_the_line')!} :",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth * 0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    " (4) ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth * 0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: context.screenHeight * .009,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${context.locale.translate("ranking_of_the_class")!} : ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth * 0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    " (1) ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth * 0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
