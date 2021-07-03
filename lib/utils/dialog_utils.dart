import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skripsi/ui/constants/theme.dart';
import 'package:skripsi/ui/widgets/widgets.dart';

class DialogUtils {
  static DialogUtils instance = DialogUtils();

  void showLoading(BuildContext context, String message) {
    showModal(
        context: context,
        configuration:
            FadeScaleTransitionConfiguration(barrierDismissible: false),
        builder: (context) {
          return LoadingDialog(
            text: message,
          );
        });
  }

  void showInfo(BuildContext context,
      {String? title,
      String? message,
      Function()? onPressed,
      String? btnText}) {
    showModal(
        context: context,
        configuration:
            FadeScaleTransitionConfiguration(barrierDismissible: true),
        builder: (dialogContext) {
          return InfoDialog(
            title: title,
            message: message,
            onPressed: onPressed,
            btnText: btnText,
          );
        });
  }

  Future<bool?> showConfirmDialog(
      BuildContext context, String title, String message,
      {String? btnCancel, String? btnOK}) {
    return showModal<bool?>(
        context: context,
        configuration:
            FadeScaleTransitionConfiguration(barrierDismissible: false),
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: Text(title),
            content: Text(message),
            actions: <Widget>[
              MaterialButton(
                child: Text(
                  btnCancel != null ? btnCancel : 'Tidak',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Get.back(result: false);
                },
              ),
              MaterialButton(
                color: ColorBase.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(btnOK != null ? btnOK : 'Ya', style: fontWhite),
                onPressed: () {
                  Get.back(result: true);
                },
              ),
            ],
          );
        });
  }
}
