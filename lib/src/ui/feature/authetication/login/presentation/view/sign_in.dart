import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:save_heaven/src/ui/feature/authetication/authentication.dart';
import 'package:save_heaven/src/ui/feature/authetication/login/presentation/provider/user_login_provider.dart';
import 'package:save_heaven/src/ui/feature/authetication/sign_up/presentation/view/sign_up.dart';
import 'package:save_heaven/src/ui/shared/app_textfield.dart';
import 'package:save_heaven/src/ui/shared/primary_button.dart';
import 'package:save_heaven/src/utils/utils.dart';

class SiginScreen extends ConsumerStatefulWidget {
  const SiginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SiginScreennState();
}

class _SiginScreennState extends ConsumerState<SiginScreen> {
  final loginProvider =
      StateNotifierProvider<LoginProvider, UserLoginFormState>(
          (ref) => LoginProvider());

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool obscureText = ref.watch(loginProvider).obscureText;

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
                    suffix: const Icon(CupertinoIcons.mail),
                    onChanged: (email) =>
                        ref.read(loginProvider.notifier).setEmail(email),
                    error: ref.watch(loginProvider).form.email.errorMessage,
                    textEditingController: emailController,
                  ),
                  SizedBox(height: 10.h),
                  AppTextField(
                    placeholder: 'Password',
                    obscureText: obscureText,
                    textEditingController: passwordController,
                    suffix: IconButton(
                        onPressed: () =>
                            ref.read(loginProvider.notifier).obscureText(),
                        icon: obscureText
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility)),
                    onChanged: (password) =>
                        ref.read(loginProvider.notifier).setPassword(password),
                    error: ref.watch(loginProvider).form.password.errorMessage,
                  ),
                  SizedBox(height: 30.h),
                  PrimaryButton(
                    label: 'Sign in',
                    onPressed: () async => ref
                        .read(loginProvider.notifier)
                        .login(context,
                            email: emailController.text.trim(),
                            password: passwordController.text.trim()),
                    isValidating: ref.watch(loginProvider).isValidating,
                    isDisabled: !ref.watch(loginProvider).form.isValid,
                  ),
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
                                      destination: const SignupScreen()),
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
