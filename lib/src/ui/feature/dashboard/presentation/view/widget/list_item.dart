import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:save_heaven/src/ui/feature/dashboard/data/model/user_file_model.dart';
import 'package:save_heaven/src/utils/utils.dart';
import 'package:thumbnailer/thumbnailer.dart';

class DashbaordListItem extends StatelessWidget {
  const DashbaordListItem({super.key, required this.data});
  final List<UserFileModel> data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.h),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(height: 5.h),
        itemBuilder: (context, index) => _child(context, data: data[index]),
        itemCount: data.length,
      ),
    );
  }
}

Widget _child(BuildContext context, {required UserFileModel data}) {
  return Container(
    height: 50.h,
    padding: EdgeInsets.all(5.h),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Appcolors.primaryColor, width: 0.5)),
    child: Material(
        child: ListTile(
      contentPadding: EdgeInsets.only(left: 4.h, right: 4.h, bottom: 4.h),
      leading: Thumbnail(
        mimeType: data.filePath!,
        widgetSize: 50.h,
      ),
      title: Text(
        data.fileName!,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
      ),
    )),
  );
}
