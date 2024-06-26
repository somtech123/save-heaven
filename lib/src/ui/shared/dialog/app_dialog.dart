import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:save_heaven/src/ui/shared/primary_button.dart';
import 'package:save_heaven/src/utils/utils.dart';

_diaglogWrapper(BuildContext context,
    {required Widget title, required Widget content}) {
  return Platform.isIOS
      ? showCupertinoDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: title,
            content: content,
          ),
        )
      : showDialog(
          context: context,
          builder: (context) => AlertDialog(
                backgroundColor: Appcolors.scaffoldbg,
                surfaceTintColor: Appcolors.scaffoldbg,
                title: title,
                content: content,
              ));
}

buildLoadingAlert(BuildContext context) => showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Appcolors.scaffoldbg,
        surfaceTintColor: Appcolors.scaffoldbg,
        content: Container(
          height: 100.h,
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/gif/loader.gif'))),
        ),
      );
    });

simpleDialog(BuildContext context,
        {required Widget title,
        Widget? content,
        String? message,
        String? label,
        VoidCallback? action}) =>
    _diaglogWrapper(
      context,
      title: title,
      content: content ??
          Column(
            children: [
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  message ?? 'An error occured, please try again later.',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              PrimaryButton(
                label: label ?? 'Dismiss',
                onPressed: action ?? () => pop(context),
              ),
            ],
          ),
    );

buildAlertDialog(BuildContext context,
        {required Widget content,
        Widget? title,
        List<Widget>? actions,
        bool barrierDismissible = false}) =>
    showDialog(
        context: context,
        barrierDismissible: barrierDismissible,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Appcolors.scaffoldbg,
            surfaceTintColor: Appcolors.scaffoldbg,
            content: content,
            title: title,
            actions: actions,
          );
        });
