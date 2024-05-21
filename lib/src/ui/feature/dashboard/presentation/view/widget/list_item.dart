import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashbaordListItem extends StatelessWidget {
  const DashbaordListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 20.h,
          color: Colors.red,
        ),
      ),
      itemCount: 20,
    ));
  }
}
