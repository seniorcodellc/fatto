
import 'package:fatto/config/routes/app_routes_helper.dart';
import 'package:fatto/core/widgets/custom_text_form_field.dart';
import 'package:fatto/features/Auth/login/presentation/logic/login_cubit.dart';
import '../../../../../exports.dart';
class LoginSection extends StatelessWidget {
  const LoginSection({super.key, required this.loginCubit});
  final LoginCubit loginCubit ;
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: loginCubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFormField(
            controller: loginCubit.emailController,
            hintText: AppStrings.email,
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
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
            controller: loginCubit.passwordController,
            hintText: AppStrings.password,
            keyboardType: TextInputType.visiblePassword,
            obscureText:loginCubit.isObscure ==false ? true : false,
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
              loginCubit.changeSuffixIcon(isObscured: loginCubit.isObscure);
            },
            radiusOfContainer: 12.r,),
          16.vs,
          GestureDetector(
            onTap: (){

            },
            child: Text(
              AppStrings.forgetYourPassword,
              style: AppStyles.styleInterRegular16.copyWith(
                  color: AppColors.primaryColor),
            ),
          ),
          24.vs,
          CustomButton(
            text: AppStrings.logIn,
            onPressed: () {
              if(loginCubit.formKey.currentState!.validate()){
                push(context: context, route: Routes.homeSection);
              }
            },
          ),
        ],
      ),
    );
  }
}
