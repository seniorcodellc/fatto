// ignore_for_file: constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';

// This is where the magic happens.
// This functions are responsible to make UI responsive across all the mobile devices.

Size size = WidgetsBinding.instance.window.physicalSize / WidgetsBinding.instance.window.devicePixelRatio;

// These are the Viewport values of your Figma Design.
// These are used in the code as a reference to create your UI Responsively.
const num FIGMA_DESIGN_WIDTH = 375;
const num FIGMA_DESIGN_HEIGHT = 904;
const num FIGMA_DESIGN_STATUS_BAR = 44;

///This method is used to get device viewport width.
get width {
  return size.width;
}

///This method is used to get device viewport height.
get height {
  num statusBar = MediaQueryData.fromView(WidgetsBinding.instance.window).viewPadding.top;
  num bottomBar = MediaQueryData.fromView(WidgetsBinding.instance.window).viewPadding.bottom;
  num screenHeight = size.height - statusBar - bottomBar;
  return screenHeight;
}

///This method is used to set padding/margin (for the left and Right side) & width of the screen or widget according to the Viewport width.
double getHorizontalSize(double px) {
  return ((px * width) / FIGMA_DESIGN_WIDTH);
}

///This method is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
double getVerticalSize(double px) {
  return ((px * height) / (FIGMA_DESIGN_HEIGHT - FIGMA_DESIGN_STATUS_BAR));
}

///This method is used to set smallest px in image height and width
double getSize(double px) {
  var height = getVerticalSize(px);
  var width = getHorizontalSize(px);
  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}

///This method is used to set text font size according to Viewport
double getFontSize(double px) {
  return getSize(px);
}

///This method is used to set padding responsively
EdgeInsetsDirectional getPadding({
  double? all,
  double? start,
  double? top,
  double? end,
  double? bottom,
  double? vertical,
  double? horizontal,
}) {
  return getMarginOrPadding(
      all: all, start: start, top: top, end: end, bottom: bottom, vertical: vertical, horizontal: horizontal);
}

///This method is used to set margin responsively
EdgeInsetsDirectional getMargin({
  double? all,
  double? start,
  double? top,
  double? end,
  double? bottom,
  double? vertical,
  double? horizontal,
}) {
  return getMarginOrPadding(
      all: all, start: start, top: top, end: end, bottom: bottom, vertical: vertical, horizontal: horizontal);
}

///This method is used to get padding or margin responsively
EdgeInsetsDirectional getMarginOrPadding({
  double? all,
  double? start,
  double? top,
  double? end,
  double? bottom,
  double? vertical,
  double? horizontal,
}) {
  if (all != null) {
    start = all;
    top = all;
    end = all;
    bottom = all;
  }
  if (vertical != null) {
    top = vertical;
    bottom = vertical;
  }
  if (horizontal != null) {
    start = horizontal;
    end = horizontal;
  }
  return EdgeInsetsDirectional.only(
    start: getHorizontalSize(
      start ?? 0,
    ),
    top: getVerticalSize(
      top ?? 0,
    ),
    end: getHorizontalSize(
      end ?? 0,
    ),
    bottom: getVerticalSize(
      bottom ?? 0,
    ),
  );
}
