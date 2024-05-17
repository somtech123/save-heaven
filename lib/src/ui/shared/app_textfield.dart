import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:save_heaven/src/utils/utils.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.fillColor,
    this.textEditingController,
    this.isTransparentBorder = false,
    this.borderColor = Colors.transparent,
    this.borderRadius,
    this.cursorColor,
    this.prefix,
    this.suffix,
    this.hasPrefixIcon = false,
    this.hasSuffixIcon = false,
    this.placeholder,
    this.placeholderStyle,
    this.scrollPadding,
    this.inputStringStyle,
    this.obscureText,
    this.enabled,
    this.filled,
    this.readOnly,
    this.autofocus,
    this.isCollapsed,
    this.showCursor,
    this.contentpadding,
    this.inputFormatters,
    this.textCapitalization,
    this.textInputAction = TextInputAction.done,
    this.focusNode,
    this.keyboardType,
    this.onChanged,
    this.onSubmitted,
    this.onTap,
  });

  final Color? fillColor;
  final TextEditingController? textEditingController;
  final TextInputAction textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization? textCapitalization;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;

  final bool isTransparentBorder;
  final Color borderColor;
  final Color? cursorColor;
  final double? borderRadius;
  final Widget? prefix;
  final Widget? suffix;
  final bool hasPrefixIcon;
  final bool hasSuffixIcon;
  final bool? enabled;
  final bool? filled;
  final bool? readOnly;
  final bool? autofocus;
  final bool? isCollapsed;
  final bool? showCursor;
  final bool? obscureText;
  final String? placeholder;
  final TextStyle? placeholderStyle;
  final TextStyle? inputStringStyle;
  final EdgeInsets? scrollPadding;
  final EdgeInsets? contentpadding;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final void Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final fs = fullScreen(context);
    final h = sHeight(context);

    return Platform.isIOS
        ? Container(
            constraints: BoxConstraints(
              maxHeight: h(50.0),
              maxWidth: fs('width'),
            ),
            padding: contentpadding ?? EdgeInsets.all(5.h),
            decoration: BoxDecoration(
              color: fillColor ?? Appcolors.fillColor,
              borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
            ),
            child: CupertinoTextField(
                controller: textEditingController,
                prefix: prefix,
                suffix: suffix,
                placeholder: placeholder ?? '',
                cursorColor: cursorColor ?? Appcolors.primaryColor,
                placeholderStyle: placeholderStyle ??
                    Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16,
                        color: Appcolors.greyColor,
                        fontWeight: FontWeight.w500),
                style: inputStringStyle ??
                    Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                obscureText: obscureText ?? false,
                enabled: enabled ?? true,
                readOnly: readOnly ?? false,
                showCursor: showCursor ?? true,
                autofocus: autofocus ?? false,
                autocorrect: false,
                textInputAction: textInputAction,
                inputFormatters: inputFormatters ?? [],
                textCapitalization:
                    textCapitalization ?? TextCapitalization.sentences,
                keyboardType: keyboardType ?? TextInputType.text,
                focusNode: focusNode,
                onChanged: onChanged,
                onTap: () =>
                    onTap ?? FocusScope.of(context).requestFocus(focusNode),
                onSubmitted: (value) {
                  onSubmitted ??
                      SystemChannels.textInput.invokeMethod('TextInput.hide');
                },
                scrollPadding:
                    scrollPadding ?? const EdgeInsets.only(bottom: 200),
                decoration:
                    BoxDecoration(color: fillColor ?? Appcolors.fillColor)),
          )
        : SizedBox(
            height: h(50.0),
            width: fs('width'),
            child: TextFormField(
              controller: textEditingController,
              cursorColor: cursorColor ?? Appcolors.primaryColor,
              scrollPadding:
                  scrollPadding ?? const EdgeInsets.only(bottom: 200),
              style: inputStringStyle ??
                  Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
              obscureText: obscureText ?? false,
              enabled: enabled ?? true,
              readOnly: readOnly ?? false,
              showCursor: showCursor ?? true,
              autofocus: autofocus ?? false,
              autocorrect: false,
              textInputAction: textInputAction,
              inputFormatters: inputFormatters ?? [],
              textCapitalization:
                  textCapitalization ?? TextCapitalization.sentences,
              keyboardType: keyboardType ?? TextInputType.text,
              focusNode: focusNode,
              onChanged: onChanged,
              onTap: () =>
                  onTap ?? FocusScope.of(context).requestFocus(focusNode),
              onFieldSubmitted: ((value) {
                onSubmitted ??
                    SystemChannels.textInput.invokeMethod('TextInput.hide');
              }),
              decoration: InputDecoration(
                contentPadding: contentpadding ?? EdgeInsets.all(5.h),
                isDense: true,
                fillColor: fillColor ?? Appcolors.fillColor,
                isCollapsed: isCollapsed ?? false,
                filled: true,
                prefixIcon: prefix,
                suffixIcon: suffix,
                hintText: placeholder ?? 'll',
                helperStyle: placeholderStyle ??
                    Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 16,
                        color: Appcolors.greyColor,
                        fontWeight: FontWeight.w500),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isTransparentBorder
                            ? Colors.transparent
                            : borderColor,
                        width: 1),
                    borderRadius: BorderRadius.circular(borderRadius ?? 8.0)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
                    borderSide: BorderSide(
                        color: isTransparentBorder
                            ? Colors.transparent
                            : borderColor,
                        width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
                    borderSide: BorderSide(
                        color: isTransparentBorder
                            ? Colors.transparent
                            : borderColor,
                        width: 2)),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isTransparentBorder
                            ? Colors.transparent
                            : borderColor,
                        width: 1),
                    borderRadius: BorderRadius.circular(borderRadius ?? 8.0)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isTransparentBorder
                            ? Colors.transparent
                            : Colors.red,
                        width: 1)),
              ),
            ),
          );
  }
}
