
import '../../../../../exports.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key,  required this.googleFunction, required this.facebookFunction});
  final VoidCallback googleFunction;
  final VoidCallback facebookFunction;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomButton(
          text: AppStrings.logInWithGoogle,
          onPressed: googleFunction ,
          backgroundColor: AppColors.transparent,
          textColor: AppColors.primaryColor,
          borderColor: AppColors.primaryColor,
          svgIconPath: AppAssets.google,
        ),
        16.vs,
        CustomButton(
          text: AppStrings.logInWithFacebook,
          onPressed: facebookFunction,
          backgroundColor: AppColors.transparent,
          textColor: AppColors.primaryColor,
          borderColor: AppColors.primaryColor,
          svgIconPath: AppAssets.facebook,
        ),
      ],
    );
  }
}
