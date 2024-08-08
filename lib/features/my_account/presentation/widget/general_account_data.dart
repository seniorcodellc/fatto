import 'package:fatto/exports.dart';

class GeneralAccountData extends StatelessWidget {
  const GeneralAccountData({super.key, required this.svgIconPath, required this.selectionName,required this.onPressed});
  final String svgIconPath;
  final String selectionName;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width ,
        child: Row(
          children: [
            SvgPicture.asset(svgIconPath,width: 28.w,height: 28.h,),
            20.hs,
            selectionName == 'Language' ? SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    selectionName,
                    style: AppStyles.styleInterSemiBold16.copyWith(color: AppColors.graphite),
                  ),
                  const Spacer(),
                  Text(
                    'English (US)',
                    style: AppStyles.styleInterSemiBold16.copyWith(color: AppColors.graphite),
                  )
                ],),
            ): Text(
              selectionName,
              style: AppStyles.styleInterSemiBold16.copyWith(
                  color: selectionName == 'Logout'?AppColors.fireRed:AppColors.graphite,
                  fontWeight:selectionName == 'Logout'?FontWeight.w400 :selectionName == 'Edit Profile' ? FontWeight.w700:FontWeight.w600,

              ),
            ) ,
            const Spacer(),
            SvgPicture.asset(AppAssets.rightIcon),
          ],
        ),
      ),
    );
  }
}
