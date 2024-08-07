import 'package:fatto/exports.dart';

class DescriptionWidget extends StatefulWidget {
  final String text;
  const DescriptionWidget({
    super.key,
    required this.text,
  });

  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    final text = widget.text;
    final maxLines = isExpanded ? null : 3;
    final textColor = isExpanded ? AppColors.slateGray : AppColors.brickRed;
    final displayText = isExpanded || text.length <= 100
        ? text
        : '${text.substring(0, 100)}...';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.description,
          style:
              AppStyles.styleInterMedium13.copyWith(color: AppColors.brickRed),
        ),
        Text(displayText,
            maxLines: maxLines,
            overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
            style: AppStyles.styleInterRegular12),
        if (text.length > 100)
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                isExpanded ? "Read less" : "Read more",
                style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        const SizedBox(
          height: 25,
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
                  color: AppColors.slateGray,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
              height: 25,
              child: SvgPicture.asset(
                AppAssets.shieldDone,
                color: AppColors.brickRed,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(AppStrings.originalProduct,
                style: AppStyles.stylePoppinsRegular12)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
              height: 25,
              child: SvgPicture.asset(
                AppAssets.historyLine,
                color: AppColors.brickRed,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(AppStrings.returnOfGoodsIn12Days,
                style: AppStyles.stylePoppinsRegular12)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
              height: 25,
              child: SvgPicture.asset(
                AppAssets.walletLine,
                color: AppColors.brickRed,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(AppStrings.payDirectlyAtYourPlace,
                style: AppStyles.stylePoppinsRegular12)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 25,
              height: 25,
              child: SvgPicture.asset(
                AppAssets.priceTag,
                color: AppColors.brickRed,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(AppStrings.voucherCodeAvailable,
                style: AppStyles.stylePoppinsRegular12),
          ],
        ),
      ],
    );
  }
}
