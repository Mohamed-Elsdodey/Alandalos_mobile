import 'package:flutter/material.dart';
import 'package:school/core/utils/gaps.dart';
import 'package:school/core/utils/helper.dart';

import '../../../../../../core/utils/functions/validation_mixin.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_login_text_field.dart';
import '../../../../../../core/widgets/custom_simple_app_bar.dart';

class EditProfileBody extends StatefulWidget {
  const EditProfileBody({super.key});

  @override
  State<EditProfileBody> createState() => _EditProfileBodyState();
}

class _EditProfileBodyState extends State<EditProfileBody>
    with ValidationMixin {
  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    final passWordController = TextEditingController();
    final emailController = TextEditingController();
    final nameController = TextEditingController();

    return Column(
      children: [
        CustomSimpleAppBar(
          isNav: true,
          appBarTitle: context.locale.translate('edit_profile')!,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gaps.vGap30,
                CustomLoginTextField(
                  textLabel: context.locale.translate('name')!,
                  controller: nameController,
                  stringInTextField: "أحمد محمد عبد الرحمن",
                  obscureText: false,
                  textInputType: TextInputType.name,
                  validator: validateNameText,
                ),
                Gaps.vGap15,
                CustomLoginTextField(
                  textLabel: context.locale.translate('email')!,
                  controller: emailController,
                  stringInTextField: 'ahmedmohamed@gmail.com',
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                  validator: validateEmail,
                ),
                Gaps.vGap15,
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
                Gaps.vGap15,
                CustomLoginTextField(
                  textLabel: context.locale.translate('confirm_password')!,
                  controller: passWordController,
                  stringInTextField: "***********",
                  obscureText: true,
                  textInputType: TextInputType.number,
                  validator: validateUserPhone,
                ),
                Gaps.vGap15,
                CustomButton(
                  onTapAvailable: true,
                  buttonText: context.locale.translate('send')!,
                  buttonTapHandler: () async {},
                  screenWidth: context.screenWidth * .75,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
