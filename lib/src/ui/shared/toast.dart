import 'package:fluttertoast/fluttertoast.dart';
import 'package:save_heaven/src/utils/utils.dart';

showToastMessage(String message, {bool isError = false}) {
  return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 2,
      backgroundColor: isError ? Appcolors.errorColor : Appcolors.successColor,
      textColor: Appcolors.whiteColor,
      fontSize: 15.0);
}
