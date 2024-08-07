import 'package:fatto/exports.dart';

class HomeSectionProduct extends StatelessWidget {
  const HomeSectionProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Card(
        color: AppColors.white,
        elevation: 4,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              child: Image.asset(
                AppAssets.brownCandy,
                width: 159.w,
                height: 120.h,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(16.w, 8.h, 9.w, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Pink Bag',
                          style: AppStyles.styleInterRegular13,
                        ),
                        Text('data',
                            style: AppStyles.styleInterRegular13
                                .copyWith(color: AppColors.burntOrange))
                      ],
                    ),
                    SvgPicture.asset(
                      AppAssets.heart,
                      height: 28.h,
                      width: 28.w,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
