import '../../../../../exports.dart';

class CreateAccountSection extends StatelessWidget {
  const CreateAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.createAccount,
          style: AppStyles.styleInterExtraBold32.copyWith(color: AppColors.darkSlateGray),
        ),
        8.vs,
        Text(
          AppStrings.fillInYourDetailsText,
          style: AppStyles.styleInterRegular16.copyWith(
              color: AppColors.taupeGray),
        ),
      ],
    );
  }
}
