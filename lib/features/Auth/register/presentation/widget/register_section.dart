import 'package:fatto/core/widgets/custom_text_form_field.dart';
import 'package:fatto/features/Auth/register/presentation/logic/register_cubit.dart';
import 'package:flutter/gestures.dart';

import '../../../../../exports.dart';
class RegisterSection extends StatelessWidget {
  const RegisterSection({super.key, required this.registerCubit});
  final RegisterCubit registerCubit ;
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: registerCubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFormField(
            controller: registerCubit.firstNameController,
            hintText: AppStrings.firstName,
            keyboardType: TextInputType.name,
            obscureText: registerCubit.isObscure,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'please enter your first name';
              }
              return null;
            },
            prefixSvgIcon: SvgPicture.asset(AppAssets.userIcon),
            radiusOfContainer: 12.r,),
          16.vs,
          CustomTextFormField(
            controller: registerCubit.lastNameController,
            hintText: AppStrings.lastName,
            keyboardType: TextInputType.name,
            obscureText: registerCubit.isObscure,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'please enter your last name';
              }
              return null;
            },
            prefixSvgIcon: SvgPicture.asset(AppAssets.userIcon),
            radiusOfContainer: 12.r,),
          16.vs,
          CustomTextFormField(
            controller: registerCubit.emailController,
            hintText: AppStrings.email,
            keyboardType: TextInputType.emailAddress,
            obscureText: registerCubit.isObscure,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'please enter your email';
              }
              return null;
            },
            prefixSvgIcon: SvgPicture.asset(AppAssets.mailIcon),
            radiusOfContainer: 12.r,),
          16.vs,
          CustomTextFormField(
            controller: registerCubit.passwordController,
            hintText: AppStrings.password,
            keyboardType: TextInputType.visiblePassword,
            obscureText:registerCubit.isObscure ==false ? true : false,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'please enter your password';
              }
              return null;
            },
            prefixSvgIcon: SvgPicture.asset(AppAssets.lockIcon),
            suffixSvgIcon: SvgPicture.asset(AppAssets.eye),
            otherSuffixSvgIcon: SvgPicture.asset(AppAssets.eyeOff),
            suffixFunction: () {
              registerCubit.changeSuffixIcon(isObscured: registerCubit.isObscure);
            },
            radiusOfContainer: 12.r,),
          24.vs,
          RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: AppStrings.byClickingCreateAccountText,
                    style: AppStyles.styleInterRegular14.copyWith(color: AppColors.taupeGray),
                  ),
                  TextSpan(
                    text: AppStrings.termsOfUse,
                    style: AppStyles.styleInterRegular14.copyWith(color: AppColors.darkGreen),
                    recognizer: TapGestureRecognizer()..onTap = () {

                    }
                  ),TextSpan(
                    text: AppStrings.and,
                    style: AppStyles.styleInterRegular14.copyWith(color: AppColors.taupeGray),
                  ),
                  TextSpan(
                    text: AppStrings.privacyPolicy,
                    style: AppStyles.styleInterRegular14.copyWith(color: AppColors.darkGreen),
                      recognizer: TapGestureRecognizer()..onTap = () {

                      }
                  ),
                ],
              )
          ),
          24.vs,
          CustomButton(
            text: AppStrings.createAccount,
            onPressed: () {  },
          ),
        ],
      ),
    );
  }
}
