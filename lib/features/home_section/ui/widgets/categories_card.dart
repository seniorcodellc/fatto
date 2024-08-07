import 'package:fatto/exports.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
    required this.title,
    required this.horizentalPadding,
  });
  final int horizentalPadding;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: horizentalPadding.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(9.5),
      ),
      child: Text(
        title,
        style: AppStyles.styleInterMedium9.copyWith(color: AppColors.white),
      ),
    );
  }
}
