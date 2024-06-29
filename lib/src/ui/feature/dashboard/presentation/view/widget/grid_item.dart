import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:save_heaven/src/ui/feature/dashboard/data/model/user_file_model.dart';
import 'package:save_heaven/src/utils/utils.dart';
import 'package:thumbnailer/thumbnailer.dart';

class DashbordGridItem extends StatelessWidget {
  const DashbordGridItem({super.key, required this.data});

  final List<UserFileModel> data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.h),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 15.w,
            childAspectRatio: 0.8,
            mainAxisExtent: 100.h,
            mainAxisSpacing: 5.h),
        itemBuilder: (context, index) =>
            _child(context, userFileModel: data[index]),
        itemCount: data.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
      ),
    );
  }
}

Widget _child(BuildContext context, {required UserFileModel userFileModel}) {
  return Container(
    padding: EdgeInsets.all(5.h),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Appcolors.primaryColor, width: 0.5)),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Thumbnail(
              mimeType: userFileModel.filePath!,
              widgetSize: 100.h,
            ),
          ),
        ),
        Text(
          userFileModel.fileName!,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 6.h)
      ],
    ),
  );
}
