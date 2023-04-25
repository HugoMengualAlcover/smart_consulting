import 'package:flutter/material.dart';
import 'package:smartconsulting/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtOutlineGreenA7003f => BoxDecoration();
  static BoxDecoration get white => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get outlineGreenA7003f => BoxDecoration(
        color: ColorConstant.cyan600,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.greenA7003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              3.5,
              7.01,
            ),
          ),
        ],
      );
  static BoxDecoration get blue => BoxDecoration(
        color: ColorConstant.cyan600,
      );
  static BoxDecoration get fillYellow800 => BoxDecoration(
        color: ColorConstant.yellow800,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius roundedBorder1 = BorderRadius.circular(
    getHorizontalSize(
      1,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
