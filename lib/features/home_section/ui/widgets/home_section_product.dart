import 'package:fatto/core/extensions.dart';
import 'package:fatto/exports.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_styles.dart';

class HomeSectionProduct extends StatelessWidget {
  const HomeSectionProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: AppColors.black.withOpacity(0.008),
          spreadRadius: 1,
          blurRadius: 1,
          offset: const Offset(0, 2), // changes position of shadow
        ),
      ], borderRadius: BorderRadius.circular(8)), // height: 197.11.h,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            child: Image.asset(
              AppAssets.brownCandy,
              width: 159.w,
              height: 120.89.h,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16.w, 0.h, 9.w, 0),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Pink Bag',
                style: AppStyles.styleInterRegular13,
              ),
              subtitle: Text('data',
                  style: AppStyles.styleInterRegular13
                      .copyWith(color: AppColors.burntOrange)),
              trailing: SvgPicture.asset(
                AppAssets.heart,
                height: 28.h,
                width: 28.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
