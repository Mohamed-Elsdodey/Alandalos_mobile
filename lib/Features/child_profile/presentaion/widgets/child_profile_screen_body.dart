import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school/core/utils/helper.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/constants.dart';
import '../../../account_page/presentation/views/widgets/icon_box.dart';
import '../../../home/presentation/manager/cubit/bottom_nav_cubit.dart';
import 'contant_card.dart';
class ChildProfileScreenBody extends StatefulWidget {
  const ChildProfileScreenBody({super.key});

  @override
  State<ChildProfileScreenBody> createState() => _ChildProfileScreenBodyState();
}

class _ChildProfileScreenBodyState extends State<ChildProfileScreenBody> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:
      CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            pinned: true,
            snap: true,
            floating: true,
            title: getAppBar(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => buildBody(),
              childCount: 1,
            ),
          )
        ],
      )

    );
  }


  Widget getAppBar(){
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(context.locale.translate('child_account')!, style: TextStyle(color: Colors.black, fontSize: context.screenWidth*0.05, fontWeight: FontWeight.w600),),
            ],
          )
          ),
          GestureDetector(
              onTap: (){
                BlocProvider.of<BottomNavCubit>(context)
                    .updateBottomNavIndex(kEditProfileScreen);                },
              child: IconBox(child: SvgPicture.asset("assets/icons/setting.svg", width: 20, height: 20),  ))
        ],
      );
  }

  Widget buildBody() {
    return
      SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          children: [
            Column(
              children: <Widget>[
                Column(
                  children: [
                    CircleAvatar(radius: context.screenHeight * .06,  backgroundImage:  AssetImage(AssetsData.childImage),),

                    SizedBox(height: context.screenHeight*0.02,),
                    const Text("mohamed adel",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                     SizedBox(height: context.screenHeight*0.01,),
                     Text("الصف الاول",
                      style: TextStyle(
                        color: labelColor,
                        fontSize: context.screenWidth*0.03,
                      ),
                    ),
                    SizedBox(height: context.screenHeight*0.03,),
                  ],
                ),
                allTasksWithChild()


          ],
        ),],),
                          );
  }

  Column allTasksWithChild() {
    return Column(children: [
                SizedBox(
                  height: context.screenHeight,
                  child: GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,crossAxisSpacing: 8,mainAxisSpacing: 8),
                    children: [
                      GestureDetector(onTap:(){
                        Navigator.pushNamed(context, kReviewsTabScreenRoute);
                      },
                        child: ContantCardChild(text: "reviews",image:         Image.asset(   width: context.screenWidth*0.15,
                            height: context.screenHeight*0.15,"assets/images/review.png"),),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, kExamsTabScreenRoute);
                        },
                        child: ContantCardChild(text: "Exams", image:  Image.asset(   width: context.screenWidth*0.15,
                            height: context.screenHeight*0.15,"assets/images/exam.png"),),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, kAbsencesTabScreenRoute);
                        },
                        child: ContantCardChild(text: "Absences", image:     Image.asset(   width: context.screenWidth*0.15,
                            height: context.screenHeight*0.15,"assets/images/students.png"),),
                      ),
                   ContantCardChild(text: "studentGrades", image:    Image.asset(   width: context.screenWidth*0.15,
                       height: context.screenHeight*0.15,"assets/images/immigration.png"),)



                    ],
                  ),
                ),
              ],);
  }
}




