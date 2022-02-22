import 'package:doraemon_app/provider/progress_dialog.dart';
import 'package:flutter/material.dart';
import 'confirm_dialog.dart';

class DialogRouter {
  static displayConfirmDialog({
    required BuildContext context,
    required String bodyText,
    required Function yesPress,
    required Function noPress,
  }) async {
    return await Navigator.of(context).push(PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return ConfirmDialog(
            yesPress: yesPress,
            noPress: noPress,
            bodyText: bodyText,
          );
        }));
  }

  static displayProgressDialog(BuildContext context) {
    Navigator.of(context).push(PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return ProgressDialog();
        }));
  }

  static closeProgressDialog(BuildContext context) {
    Navigator.of(context).pop();
  }
}
