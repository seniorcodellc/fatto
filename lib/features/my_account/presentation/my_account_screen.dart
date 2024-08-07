import 'package:fatto/exports.dart';
import 'package:fatto/features/my_account/presentation/widget/general_account_data.dart';
import 'package:fatto/features/my_account/presentation/widget/header_profile_section.dart';
import 'package:flutter/services.dart';


class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const HeaderProfileSection(),
              24.vs,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.general,
                      style: AppStyles.styleInterBold16.copyWith(color: AppColors.darkSlateGray),
                    ),
                    16.vs,
                    GeneralAccountData(svgIconPath: AppAssets.profile, selectionName: 'Edit Profile', onPressed: () {  },),
                    16.vs,
                    GeneralAccountData(svgIconPath: AppAssets.moreCircle, selectionName: 'Language', onPressed: () {  },),
                    16.vs,
                    GeneralAccountData(svgIconPath: AppAssets.address, selectionName: 'Address', onPressed: () {  },),
                    16.vs,
                    GeneralAccountData(svgIconPath: AppAssets.shieldDone, selectionName: 'Change Password', onPressed: () {  },),
                    16.vs,
                    GeneralAccountData(svgIconPath: AppAssets.lock, selectionName: 'Terms & Conditions', onPressed: () {  },),
                    16.vs,
                    Padding(
                      padding:  EdgeInsets.all(16.r),
                      child: GeneralAccountData(svgIconPath: AppAssets.logout, selectionName: 'Logout', onPressed: () {  },),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
