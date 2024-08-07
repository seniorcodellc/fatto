import 'package:fatto/exports.dart';
import 'custom_time_card.dart';

class TimeRow extends StatelessWidget {
  const TimeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Text(
              'Discount ends in',
              style: AppStyles.styleInterMedium12,
            ),
            12.hs,
            const CustomTimeCard(time: '22'),
            6.hs,
            const Text(":",
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold)),
            4.38.hs,
            const CustomTimeCard(time: '22'),
            6.hs,
            const Text(":",
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold)),
            3.37.hs,
            const CustomTimeCard(time: '22'),
          ],
        ),
      ],
    );
  }
}
