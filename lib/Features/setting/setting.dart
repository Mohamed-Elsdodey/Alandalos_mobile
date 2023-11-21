import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:school/Features/setting/widgets/personal_account_screen_body.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 300),
      child: const SettingScreenBody(),
    );
  }
}
