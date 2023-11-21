import 'package:flutter/material.dart';
import 'package:school/core/utils/gaps.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/constants.dart';
import '../../../../../../core/utils/functions/validation_mixin.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_login_text_field.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> with ValidationMixin {
  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    final passWordController = TextEditingController();

    return SingleChildScrollView(
      child: Column(
        children: [
          Gaps.vGap10,
          Center(
            child: Image.asset(
              AssetsData.logInImage,
              width: context.screenWidth * .55,
              height:context.screenHeight*0.33,
            ),
          ),
          Gaps.vGap30,
          CustomLoginTextField(
            textLabel: context.locale.translate('phone_number')!,
            controller: phoneController,
            stringInTextField: "523672632",
            obscureText: false,
            textInputType: TextInputType.number,
            validator: validateUserPhone,
            prefixIcon: const Text("   966+  |  ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.45,
                )),
          ),
          Gaps.vGap15,
          CustomLoginTextField(
            textLabel: context.locale.translate('password')!,
            controller: passWordController,
            stringInTextField: "***********",
            obscureText: true,
            textInputType: TextInputType.number,
            validator: validateUserPhone,
          ),

          Gaps.vGap50,
          CustomButton(
            onTapAvailable: true,
            buttonText: context.locale.translate('login')!,
            buttonTapHandler: () async {
              Navigator.pushNamed(context, kBottomNavRoute);
            },
            screenWidth: context.screenWidth * .75,
          ),

        ],
      ),
    );
  }
}
