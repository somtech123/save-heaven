// ignore_for_file: depend_on_referenced_packages

import 'package:pull_down_button/pull_down_button.dart';
import 'package:save_heaven/src/utils/utils.dart';

import 'package:flutter/material.dart';

ThemeData globalTheme(BuildContext context) {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    extensions: [
      PullDownButtonTheme(
        routeTheme:
            const PullDownMenuRouteTheme(backgroundColor: Appcolors.whiteColor),
        titleTheme: PullDownMenuTitleTheme(
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        itemTheme: PullDownMenuItemTheme(
          destructiveColor: Appcolors.errorColor,
          textStyle: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
    ],
  );
}
