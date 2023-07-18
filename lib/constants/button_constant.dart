import 'package:flutter/material.dart';

import '../resources/value_manager.dart';

Widget ButtonWidget({
  required String buttonText,
  required Color buttonColor,
  required Color textColor,
  required FontWeight fontWeight,
  required double fontSize,
  required VoidCallback onPressed,
}) {
  return Padding(
    padding: const EdgeInsets.only(right: AppPadding.p20, left: AppPadding.p12),
    child: SizedBox(
      width: AppSize.s290,
      height: AppSize.s40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: buttonColor,
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ),
      ),
    ),
  );
}
