import 'package:flutter/material.dart';
import 'package:school/core/utils/helper.dart';

import '../../../home/presentation/widgets/custom_home_container.dart';
class ExamListView extends StatelessWidget {
  const ExamListView({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*0.03),
      child: CustomHomeContainer(
        color: color,
        height: context.screenHeight*0.16,
        width: context.screenWidth * 0.1,
        child:
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*0.03,vertical: context.screenHeight*0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Row(
                children: [
                  Text(
                    "${context.locale.translate("Subject_material")!} : ",
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
                    "اللغة الانجليزية",
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
                    "${context.locale.translate("name_of_the_subject_teacher")!} : ",
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
                    "عبد الرحمن",
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
                    "${context.locale.translate("total_marks")!} : ",
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
                    "(100)",
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
                    "${context.locale.translate("student_grade")!}",
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
                    "(88)",
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
