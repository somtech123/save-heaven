import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:save_heaven/src/ui/feature/authetication/sign_up/presentation/view/sign_up.dart';

class SafeHeaven extends StatelessWidget {
  const SafeHeaven({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Save Heaven',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SignupScreen(),
      ),
    );
  }
}
