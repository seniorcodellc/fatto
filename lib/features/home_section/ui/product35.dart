import 'package:fatto/exports.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'widgets/color_card.dart';

class Product35 extends StatelessWidget {
  const Product35({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return CustomBackground(
        isTransparent: true,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Stack(
              children: [
                Image.asset(
                  AppAssets.brownCandy,
                  height: 537.h,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  bottom: 12,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 5,
                      effect: ExpandingDotsEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          activeDotColor: AppColors.primaryColor,
                          dotColor: AppColors.primaryColor.withOpacity(.3)),
                    ),
                  ),
                ),
              ],
            ),
            16.vs,
            Padding(
              padding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 20.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$17,00',
                        style: AppStyles.styleInterExtraBold26,
                      ),
                      SvgPicture.asset(
                        AppAssets.share,
                        height: 30.h,
                      ),
                    ],
                  ),
                  15.vs,
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam arcu mauris, scelerisque eu mauris id, pretium pulvinar sapien.',
                    style: AppStyles.styleInterMedium15,
                  ),
                  17.vs,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Variati',
                        style: AppStyles.styleInterExtraBold20,
                      ),
                      Row(
                        children: [
                          const ColorCard(
                            title: 'Pink',
                          ),
                          const ColorCard(
                            title: 'Black',
                          ),
                          const ColorCard(
                            title: 'White',
                          ),
                          24.hs,
                          CircleAvatar(
                            backgroundColor: AppColors.primaryColor,
                            radius: 15,
                            child: Center(
                              child: SvgPicture.asset(AppAssets.arrow),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  10.vs,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            AppAssets.cam,
                            height: 86.h,
                            width: 81.w,
                            fit: BoxFit.cover,
                          )),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            AppAssets.cam,
                            height: 86.h,
                            width: 81.w,
                            fit: BoxFit.cover,
                          )),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            AppAssets.cam,
                            height: 86.h,
                            width: 81.w,
                            fit: BoxFit.cover,
                          )),
                    ],
                  ),
                  25.vs,
                  Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 47.w,
                        decoration: BoxDecoration(
                            color: AppColors.product35ColorColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                            child: SvgPicture.asset(
                          AppAssets.heart,
                          height: 30.h,
                        )),
                      ),
                      24.hs,
                      Expanded(
                          child:
                              CustomButton(text: 'Buy now', onPressed: () {}))
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}





 /*  SizedBox(
                    height: 86.h,
                    child: ListView.builder(itemCount: 3,scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                      return Padding(
                        padding: EdgeInsets.only(right: 50.w),
                        child: Image.asset(AppAssets.cam,height: 86.h),
                      );
                    }),
                  ), */