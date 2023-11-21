import 'package:flutter/material.dart';
import 'package:school/core/utils/helper.dart';

import '../../../home/presentation/widgets/custom_home_container.dart';
class AbsencesListView extends StatelessWidget {
  const AbsencesListView({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*0.03),
      child: CustomHomeContainer(
        color: color,
        height: context.screenHeight*0.16,
        width: context.screenWidth * 0.1,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*0.03,vertical: context.screenHeight*0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
              "${context.locale.translate("status")!} : ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth*0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: context.screenWidth * .009,
                  ),
                  Text(
                    "(غياب ) ",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: context.screenWidth*0.028,

                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),

              SizedBox(height: context.screenHeight*0.011,),
              Row(
                children: [
                  Text(
                    "${context.locale.translate("number_of_days_of_delay")!} : ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth*0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: context.screenWidth * .009,
                  ),
                  Text(
                    "(1 ) ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth*0.028,

                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),

              SizedBox(height: context.screenHeight*0.011,),
              Row(
                children: [
                  Text(
                       "${context.locale.translate("number_of_absence_day")!} : ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth*0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: context.screenWidth * .009,
                  ),
                  Text(
                    "(1 ) ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth*0.028,

                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),

              SizedBox(height: context.screenHeight*0.011,),
              Row(
                children: [
                  Text(
                    " ${context.locale.translate("date")!} : ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth*0.03,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: context.screenWidth * .009,
                  ),
                  Text(
                    "14 - 5 - 2023 ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: context.screenWidth*0.028,

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
