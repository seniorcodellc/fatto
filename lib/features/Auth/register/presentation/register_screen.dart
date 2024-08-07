import 'package:fatto/exports.dart';
import 'package:fatto/features/Auth/register/presentation/logic/register_cubit.dart';
import 'package:fatto/features/Auth/register/presentation/logic/register_state.dart';
import 'package:fatto/features/Auth/register/presentation/widget/create_account_section.dart';
import 'package:fatto/features/Auth/register/presentation/widget/register_section.dart';
import 'package:fatto/features/Auth/register/presentation/widget/social_register_section.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
        },
        builder: (context, state) {
          var registerCubit = RegisterCubit.get(context);
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
                        const CreateAccountSection(),
                        32.vs,
                        RegisterSection(registerCubit: registerCubit,),
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
                        SocialRegisterSection(googleFunction: () {  }, facebookFunction: () {  },),
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
