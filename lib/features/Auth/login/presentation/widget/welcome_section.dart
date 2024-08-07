import '../../../../../exports.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.welcomeBack,
          style: AppStyles.styleInterExtraBold32.copyWith(color: AppColors.darkSlateGray),
        ),
        8.vs,
        Text(
          AppStrings.enterYourEmailText,
          style: AppStyles.styleInterRegular16.copyWith(
              color: AppColors.taupeGray),
        ),
      ],
    );
  }
}
