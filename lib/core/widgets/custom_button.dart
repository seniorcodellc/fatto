import 'package:fatto/exports.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.borderRadius,
      required this.onPressed,
      this.textColor,
      this.borderColor,
      this.backgroundColor,
      this.svgIconPath,
      this.width, this.height});
  final String text;
  final double? borderRadius;
  final String? svgIconPath;
  final VoidCallback onPressed;
  final Color? textColor;
  final Color? borderColor;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height:height ?? 55.h,
        minWidth: width ?? MediaQuery.sizeOf(context).width * 0.9,
        color: backgroundColor ?? AppColors.primaryColor,
        elevation: 0,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
            side: BorderSide(color: borderColor ?? AppColors.primaryColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svgIconPath != null
                ? SvgPicture.asset(
                    svgIconPath!,
                    width: 20.w,
                    height: 20.w,
                  )
                : 0.hs,
            svgIconPath != null ? 14.hs : 0.hs,
            Text(
              text,
              style: AppStyles.styleInterBold16
                  .copyWith(color: textColor ?? AppColors.white),
            ),
          ],
        ));
  }
  // @override
  // Widget build(BuildContext context) {
  //   return TextButton(
  //     style: ButtonStyle(
  //       shape: WidgetStateProperty.all<RoundedRectangleBorder>(
  //         RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(
  //             borderRadius ?? 16.0,
  //           ),
  //         ),
  //       ),
  //       // shape: WidgetStateProperty.all<RoundedRectangleBorder>(...): Sets the
  //       // shape of the button to a rounded rectangle with a border radius. If
  //       //borderRadius is not provided, it defaults to 16.0.r.
  //       backgroundColor: WidgetStatePropertyAll(
  //         backgroundColor ?? AppColors.primaryColor,
  //       ),
  //       // backgroundColor: WidgetStatePropertyAll(...): Sets the background
  //       //color of the button. If backgroundColor is not provided, it defaults
  //       // to DocSpotColorsManager.primaryBlueColor.
  //       padding: WidgetStateProperty.all<EdgeInsets>(
  //         EdgeInsets.symmetric(
  //           horizontal: horizontalPadding ?? 12,
  //           vertical: verticalPadding ?? 14,
  //         ),
  //         // padding: WidgetStateProperty.all<EdgeInsets>(...): Sets the padding
  //         //inside the button. If horizontalPadding or verticalPadding are not
  //         // provided, they default to 12.w and 14.h respectively.
  //       ),
  //       fixedSize: WidgetStateProperty.all(
  //         Size(
  //           buttonWidth ?? double.maxFinite,
  //           buttonHeight ?? 50,
  //         ),
  //       ),
  //       // fixedSize: WidgetStateProperty.all(...): Sets the fixed size of the
  //       //button. If buttonWidth or buttonHeight are not provided, they default
  //       //to double.maxFinite and 50.h respectively.
  //     ),
  //     onPressed: onPressed,
  //     // onPressed: onPressed: Sets the callback function to be executed when
  //     // the button is pressed.
  //     child: Text(
  //       buttonText,
  //       style: textStyle,
  //     ),
  //   );
  // }
}
// This widget is designed to create a customizable text button using
//Flutter's TextButton widget.
