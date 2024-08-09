import 'package:fatto/exports.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragEnd: (details) {
        if (details.primaryVelocity! < 0) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ProductDetailsScreen()),
          );
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          const Text('Peponi', style: AppStyles.styleInterBold18),
          const SizedBox(height: 9),
          const Text('Crochet Bag', style: AppStyles.styleInterBold18),
          const SizedBox(height: 9),
          Row(
            children: [
              Text('\$ 256.90',
                  style: AppStyles.styleInterMedium13
                      .copyWith(color: AppColors.brickRed)),
              const SizedBox(width: 12),
              Text(
                '\$ 277.99',
                style: AppStyles.styleInterRegular14.copyWith(
                  color: AppColors.slateGray,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(width: 4),
              Text('50% OFF',
                  style: AppStyles.styleInterRegular14.copyWith(
                    color: AppColors.slateGray,
                  )),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(AppAssets.heart),
                const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: MoreDetailsButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MoreDetailsButton extends StatelessWidget {
  const MoreDetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: MediaQuery.sizeOf(context).width * 0.35,
      height: MediaQuery.sizeOf(context).height * 0.05,
      text: AppStrings.moreDetails,
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
