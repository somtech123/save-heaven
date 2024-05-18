import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:save_heaven/src/ui/feature/authetication/authentication.dart';
import 'package:save_heaven/src/ui/feature/authetication/login/presentation/view/sign_in.dart';
import 'package:save_heaven/src/ui/feature/authetication/sign_up/presentation/provider/user_sign_up_form_provider.dart';
import 'package:save_heaven/src/ui/shared/app_textfield.dart';
import 'package:save_heaven/src/ui/shared/primary_button.dart';
import 'package:save_heaven/src/utils/utils.dart';

class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> {
  final signUpProvider =
      StateNotifierProvider<UserSignUpFormProvider, UserSignUpFormState>(
          (ref) => UserSignUpFormProvider());

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController usernameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool obscureText = ref.watch(signUpProvider).obscureText;

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
                    'Create an Account',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 24, fontWeight: FontWeight.w700),
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
                        ref.read(signUpProvider.notifier).setEmail(email),
                    textEditingController: emailController,
                    error: ref.watch(signUpProvider).form.email.errorMessage,
                  ),
                  SizedBox(height: 10.h),
                  AppTextField(
                    placeholder: 'Username',
                    suffix: const Icon(CupertinoIcons.person),
                    onChanged: (username) =>
                        ref.read(signUpProvider.notifier).setUserName(username),
                    textEditingController: usernameController,
                    error: ref.watch(signUpProvider).form.username.errorMessage,
                  ),
                  SizedBox(height: 10.h),
                  AppTextField(
                    placeholder: 'Password',
                    obscureText: obscureText,
                    textEditingController: passwordController,
                    suffix: IconButton(
                        onPressed: () =>
                            ref.read(signUpProvider.notifier).obscureText(),
                        icon: obscureText
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility)),
                    error: ref.watch(signUpProvider).form.password.errorMessage,
                    onChanged: (password) =>
                        ref.read(signUpProvider.notifier).setPassword(password),
                  ),
                  SizedBox(height: 30.h),
                  PrimaryButton(
                    isValidating: ref.watch(signUpProvider).isValidating,
                    label: 'Sign up',
                    onPressed: () => ref
                        .read(signUpProvider.notifier)
                        .signupUser(context,
                            email: emailController.text.trim(),
                            password: passwordController.text.trim()),
                    isDisabled: !ref.watch(signUpProvider).form.isValid,
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
                                text: 'Sign In',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () =>
                                      push(context, destination: SiginScreen()),
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
