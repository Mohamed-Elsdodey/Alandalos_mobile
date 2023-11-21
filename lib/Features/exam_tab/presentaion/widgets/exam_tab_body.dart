import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/Features/review_tab/presentaion/widgets/review_List_widgets.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/utils/constants.dart';
import '../../../home/presentation/manager/cubit/bottom_nav_cubit.dart';
import 'exam_List_widgets.dart';

class ExamTabBody extends StatelessWidget {
  const ExamTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: context.screenWidth * 0.02),
              child: const Icon(Icons.arrow_back, color: kPrimaryColorBlack),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                BlocProvider.of<BottomNavCubit>(context)
                    .updateBottomNavIndex(kNotificationsScreen);
              },
              child: Image.asset(
                AssetsData.bellIcon,
              ),
            ),
          ],
          backgroundColor: kPrimaryColorWhite,
          title: Text(
            context.locale.translate("exams")!,
            style: TextStyle(fontSize: context.screenWidth * 0.04),
          )),
      backgroundColor: kPrimaryColorWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.screenHeight * 0.02,
              vertical: context.screenWidth * 0.02),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: context.locale.isEnLocale ? 0 : 20,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: context.locale.isEnLocale ? 0 : 20,
                          left: context.locale.isEnLocale ? 20 : 0),
                      child: SizedBox(
                        height: context.screenHeight,
                        child: const ExamListWidgets(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
