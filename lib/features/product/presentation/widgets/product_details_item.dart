import 'package:fatto/exports.dart';
import 'package:fatto/features/product/presentation/widgets/colors_widget.dart';
import 'package:fatto/features/product/presentation/widgets/description_widget.dart';

class ProductDetailsItem extends StatelessWidget {
  const ProductDetailsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 21, right: 19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Peponi', style: AppStyles.styleInterBold18),
                  SizedBox(
                    height: 1,
                  ),
                  Text('Crochet Bag', style: AppStyles.styleInterBold18),

                  // SvgPicture.asset('assets/heart_unfilled.svg'),
                ],
              ),
              Column(
                children: [
                  Text('\$ 256.90',
                      style: AppStyles.styleInterRegular22_5
                          .copyWith(color: AppColors.brickRed)),
                  Row(
                    children: [
                      Text(
                        '\$ 277.99',
                        style: AppStyles.styleInterRegular11.copyWith(
                          color: AppColors.slateGray,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text('50% OFF',
                          style: AppStyles.styleInterRegular11.copyWith(
                            color: AppColors.slateGray,
                          )),
                    ],
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'COLOR',
            style: AppStyles.styleInterMedium15,
          ),
          const SizedBox(
            height: 8,
          ),
          const ColorWidget(),
          const SizedBox(
            height: 24,
          ),
          const DescriptionWidget(
            text:
                '- Celana Jeans dengan Pola Mom Fit \n- Bahan Katun Denim Tidak Melar\n- Pinggang Elastis memakai karet \n- Elastisitas/Melar hingga 2-3 cm\n- High Waist\n- Resetling\n- Saku di depan dan belakang\n- Nyaman dipakai',
          ),
          const SizedBox(
            height: 34,
          ),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(AppAssets.heart),
                const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: CustomOrangeButton(
                    text: AppStrings.order,
                  ),
                )
              ],
            ),

            // SvgPicture.asset('assets/heart_unfilled.svg'),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFF777777),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Center(
            child: Text(AppStrings.maybeYouLikeItToo,
                style: AppStyles.stylePoppinsSemiBold14),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}

class CustomOrangeButton extends StatelessWidget {
  const CustomOrangeButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: MediaQuery.sizeOf(context).width * 0.35,
      height: MediaQuery.sizeOf(context).height * 0.05,
      text: text,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductDetailsScreen()),
        );
      },
      borderRadius: 4.0,
    );
  }
}
