import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/Features/edit_profile/presentation/views/edit_profile_screen.dart';
import 'package:school/Features/privacy_and_policy/presentation/views/privacy_and_policy_screen.dart';
import 'package:school/Features/send_message/presentation/manager/cubit/attachments_cubit.dart';
import 'package:school/Features/terms_and_conditions/presentation/views/terms_and_conditions_screen.dart';
import 'package:school/core/utils/functions/setup_service_locator.dart';
import 'package:school/features/home/presentation/screens/home_screen.dart';
import 'package:school/features/messages/presentation/screens/messages_screen.dart';

import '../../../../account_page/presentation/views/widgets/account.dart';
import '../../../../notifications/presentation/screens/notification_screen.dart';
import '../../../../contact_us/presentation/views/contact_us_screen.dart';
import '../../../../send_message/presentation/screens/send_message_screen.dart';
import '../../../../setting/setting.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial());

  int bottomNavIndex = 0;
  bool drawerIsOpen = false;
  late String? messageId;
  List<Widget> bottomNavScreens = [
    //FIVE BOTTOM NAV ITEMS
    //0
    const HomeScreen(),

    //1
    const MessagesScreen(),

    //2
    const AccountPage(),
    //3

    const SettingScreen(),

    //4
    BlocProvider(
      create: (_) => getIt<AttachmentsCubit>(),
      child: const SendMessageScreen(),
    ),

    //5

    const ContactUsScreen(),

    //6

    const EditProfileScreen(),

    //7

    const PrivacyAndPolicyScreen(),
    //8
    const NotificationsScreen(),

    //9

    const TermsAndConditionsScreen(),
  ];

  Widget get selectedBottomNavScreen => bottomNavScreens[bottomNavIndex];

  ListQueue<int> navigationQueue = ListQueue();

  void updateBottomNavIndex(int value) {
    emit(BottomNavInitial());
    bottomNavIndex = value;
    emit(BottomNavIsChanging());
  }

  void changeDrawerState(bool value) {
    emit(BottomNavInitial());
    drawerIsOpen = value;
    emit(DrawerState());
  }

  void getMessageId(String value) {
    emit(BottomNavInitial());
    messageId = value;
    emit(BottomNavIsChanging());
  }
}
