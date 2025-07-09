import 'package:dalel/core/fuctions/custom_navigate.dart';
import 'package:dalel/core/utlis/app_strings.dart';
import 'package:dalel/core/utlis/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class customAuthBtns extends StatelessWidget {
  const customAuthBtns({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          CustomBtn(
            onPressed: () {
              customNavigate(context: context, path: '/signUp');
            },
            text: AppStrings.createAccount,
          ),
          SizedBox(height: 6),
          TextButton(
            child: Text(
              AppStrings.login,
              style: AppStyles.poppins300style16.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            onPressed: () {
              customNavigate(context: context, path: '/logIn');
            },
          ),
        ],
      );
  }
}