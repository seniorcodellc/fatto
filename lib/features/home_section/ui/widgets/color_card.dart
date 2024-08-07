import 'package:fatto/exports.dart';

class ColorCard extends StatelessWidget {
  const ColorCard({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Container(
        height: 25.h,
        width: 55.w,
        color: AppColors.product35ColorColor,
        child: Center(
          child: Text(
            title,
            style: AppStyles.styleInterMedium15,
          ),
        ),
      ),
    );
  }
}
