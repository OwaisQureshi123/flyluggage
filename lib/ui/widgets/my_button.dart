import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_constants.dart';

class MyButton extends StatelessWidget {
  String title;
  Function? action;
  bool avoidFloat = false, disabled = false, isOutlined = false;

  GlobalKey<FormState>? formKey;

  MyButton(this.title, this.action, {this.avoidFloat = false});

  MyButton.outlined(this.title, this.action, {this.avoidFloat = false}) {
    isOutlined = true;
  }

  MyButton.validateForm(
    this.title,
    this.action,
    this.formKey, {
    this.avoidFloat = false,
  });

  MyButton.disable(this.title) {
    disabled = true;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled
          ? null
          : () {
              if (formKey == null) return this.action!();

              if (formKey != null && formKey!.currentState!.validate())
                return this.action!();
            },
      style: ElevatedButton.styleFrom(
        foregroundColor: disabled ? AppGrey : Colors.white,
        backgroundColor: isOutlined ? Colors.white : PrimaryBlue,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          side: BorderSide(
            color: isOutlined ? PrimaryBlue : Colors.transparent,
            width: 1.5,
          ),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        child: Text(title, style: Theme.of(Get.context!).textTheme.labelSmall!),
        height: 50,
      ),
    );
  }
}
