import 'package:fatto/exports.dart';

class CustomTimeCard extends StatelessWidget {
  const CustomTimeCard({
    super.key,
    required this.time,
  });
  final String time;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19.h,
      width: 19.w,
      decoration: BoxDecoration(
          color: AppColors.primaryColor, borderRadius: BorderRadius.circular(3)),
      child: Center(
        child: Text(
          time,
          style: AppStyles.stylePoppinsSemiBold9.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
