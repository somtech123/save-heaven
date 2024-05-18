import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:save_heaven/src/ui/feature/authetication/sign_up/presentation/view/sign_up.dart';
import 'package:save_heaven/src/ui/shared/app_textfield.dart';
import 'package:save_heaven/src/ui/shared/primary_button.dart';
import 'package:save_heaven/src/utils/utils.dart';

class SiginScreen extends StatelessWidget {
  const SiginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: true,
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back!',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 24, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Kindly fill in the required details!',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10.h),
                  AppTextField(
                    placeholder: 'Email',
                    suffix: Icon(CupertinoIcons.mail),
                  ),
                  SizedBox(height: 20.h),
                  AppTextField(
                    placeholder: 'Password',
                    obscureText: true,
                    suffix: Icon(Icons.visibility),
                  ),
                  SizedBox(height: 30.h),
                  PrimaryButton(label: 'Sign in', onPressed: () {}),
                  SizedBox(height: 10.h),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'Already have an account? ',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                          children: [
                            TextSpan(
                                text: 'Sign up',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => push(context,
                                      destination: SignupScreen()),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Appcolors.accentColor))
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
