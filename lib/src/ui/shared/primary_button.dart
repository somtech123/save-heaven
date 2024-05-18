// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:save_heaven/src/utils/utils.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final Color? labelColor;
  final Function? onPressed;
  final Color? backgroundColor;
  final Color? accentColor;
  final Color? borderColor;
  bool hideBorder;
  final double? topLeftRadius;
  final double? topRightRadius;
  final double? bottomRightRadius;
  final double? bottomLeftRadius;
  final bool? isDisabled;
  final bool? isValidating;

  // ignore: use_super_parameters
  PrimaryButton(
      {Key? key,
      required this.label,
      this.labelColor,
      required this.onPressed,
      this.backgroundColor,
      this.accentColor,
      this.hideBorder = false,
      this.borderColor,
      this.topLeftRadius,
      this.bottomLeftRadius,
      this.bottomRightRadius,
      this.isValidating = false,
      this.isDisabled = false,
      this.topRightRadius})
      : super(key: key);

  MaterialStateProperty<T> changeButtonStyle<T>(style) =>
      MaterialStateProperty.all<T>(style);

  @override
  Widget build(BuildContext context) {
    final fs = fullScreen(context);
    final h = sHeight(context);

    return ElevatedButton(
        style: ButtonStyle(
          minimumSize: changeButtonStyle<Size>(Size(
            fs('width'),
            h(48.0),
          )),
          animationDuration: const Duration(
              microseconds: IntConstants.buttonSplashAnimationDuration),
          backgroundColor: changeButtonStyle<Color>(hideBorder == true
              ? Colors.transparent
              : isDisabled == true
                  ? Appcolors.primaryColor.withOpacity(0.2)
                  : backgroundColor ?? Appcolors.primaryColor),
          overlayColor: changeButtonStyle<Color>(
            accentColor ?? Appcolors.buttonOverlay,
          ),
          shape: changeButtonStyle<OutlinedBorder>(
            hideBorder == false
                ? RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(topLeftRadius ?? 8.0),
                        bottomLeft: Radius.circular(bottomLeftRadius ?? 8.0),
                        bottomRight: Radius.circular(bottomRightRadius ?? 8.0),
                        topRight: Radius.circular(topRightRadius ?? 8.0)))
                : RoundedRectangleBorder(
                    side: BorderSide(
                        width: 1.0, color: borderColor ?? Colors.white),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(topLeftRadius ?? 8.0),
                        bottomLeft: Radius.circular(bottomLeftRadius ?? 8.0),
                        bottomRight: Radius.circular(bottomRightRadius ?? 8.0),
                        topRight: Radius.circular(topRightRadius ?? 8.0))),
          ),
          elevation: changeButtonStyle<double>(0.0),
        ),
        onPressed: onPressed == null ? null : () => onPressed!(),
        child: isValidating == false
            ? Text(
                label,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 15,
                      color: labelColor ?? Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
              )
            : Platform.isIOS
                ? const CupertinoActivityIndicator(
                    color: Appcolors.whiteColor,
                  )
                : const CircularProgressIndicator(
                    color: Appcolors.whiteColor,
                  ));
  }
}
