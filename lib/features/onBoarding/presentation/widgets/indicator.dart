import '../../../../core/utils/size_utils.dart';
import '../../../../exports.dart';

class Indicator extends StatelessWidget {
  final bool isActive;

  const Indicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 158),
      margin: EdgeInsets.symmetric(horizontal: getHorizontalSize(6)), // Responsive margin
      height: getVerticalSize(8), // Responsive height
      width: isActive ? getHorizontalSize(12) : getHorizontalSize(8), // Responsive width
      decoration: BoxDecoration(
        color: isActive ? AppColors.primaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
