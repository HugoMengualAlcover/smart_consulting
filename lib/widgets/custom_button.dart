import 'package:flutter/material.dart';
import 'package:smartconsulting/core/app_export.dart';

class CustomButton extends StatefulWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget,
      this.key,
      this.enabled = true});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  bool enabled;

  Key? key;

  @override
  _CustomButton createState() => _CustomButton();
}

class _CustomButton extends State<CustomButton> {
  @override
  void initState() {
    super.initState();
    // widget.enabled = widget.enabled == null ? true : widget.enabled;
  }

  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: widget.enabled ? widget.onTap : () {},
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (widget.prefixWidget != null || widget.suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.prefixWidget ?? SizedBox(),
          Text(
            widget.text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          widget.suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        widget.text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        widget.width ?? double.maxFinite,
        widget.height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: widget.enabled ? _setColor() : Colors.grey,
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (widget.padding) {
      case ButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      default:
        return getPadding(
          all: 13,
        );
    }
  }

  _setColor() {
    switch (widget.variant) {
      case ButtonVariant.FillCyan600:
        return ColorConstant.cyan600;
      case ButtonVariant.OutlineWhiteA700:
        return null;
      default:
        return ColorConstant.cyan600;
    }
  }

  _setTextButtonBorder() {
    switch (widget.variant) {
      case ButtonVariant.OutlineWhiteA700:
        return BorderSide(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (widget.shape) {
      case ButtonShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (widget.fontStyle) {
      case ButtonFontStyle.UrbanistRomanRegular20Cyan600:
        return TextStyle(
          color: ColorConstant.cyan600,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.20,
          ),
        );
      case ButtonFontStyle.UrbanistBold1401:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14.01,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.36,
          ),
        );
      case ButtonFontStyle.UrbanistRomanRegular12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.25,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.20,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder12,
  CircleBorder24,
}

enum ButtonPadding {
  PaddingAll13,
  PaddingAll4,
}

enum ButtonVariant {
  Blue,
  OutlineWhiteA700,
  FillCyan600,
}

enum ButtonFontStyle {
  UrbanistRomanRegular20,
  UrbanistRomanRegular20Cyan600,
  UrbanistBold1401,
  UrbanistRomanRegular12,
}
