import 'package:fatto/config/routes/app_routes_helper.dart';
import 'package:fatto/exports.dart';
import 'package:fatto/features/Auth/login/presentation/logic/login_cubit.dart';
import 'package:fatto/features/Auth/login/presentation/logic/login_state.dart';
import 'package:fatto/features/Auth/login/presentation/widget/login_section.dart';
import 'package:fatto/features/Auth/login/presentation/widget/social_login_section.dart';
import 'package:fatto/features/Auth/login/presentation/widget/welcome_section.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          var loginCubit = LoginCubit.get(context);
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  44.vs,
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.w, vertical: 24.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const WelcomeSection(),
                        32.vs,
                        LoginSection(loginCubit: loginCubit,),
                        32.vs,
                        Row(
                          children: [
                            const Expanded(
                              child: Divider(
                                color:Color(0xffC2C2C2),
                                height: 0.5,
                              ),
                            ),
                            Padding(
                              padding: 8.ph,
                              child: Text(
                                AppStrings.or,
                                style: AppStyles.styleManropeRegular12.copyWith(color: AppColors.darkSlateGray),
                              ),
                            ),
                            const Expanded(
                              child: Divider(
                                color:Color(0xffC2C2C2),
                                height: 0.5,
              
                              ),
                            ),
                          ],
                        ),
                        32.vs,
                        SocialLoginSection(googleFunction: () {  }, facebookFunction: () {  },),
                        32.vs,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppStrings.dontHaveAnAccount,
                              style: AppStyles.styleInterRegular16.copyWith(
                                  color: AppColors.darkSlateGray),
                            ),
                            GestureDetector(
                              onTap: (){
                                push( context: context, route: Routes.registerRoute);
                              },
                              child: Text(
                                AppStrings.register,
                                style: AppStyles.styleInterRegular12.copyWith(
                                    color: AppColors.primaryColor),
                              ),
                            ),
              
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
