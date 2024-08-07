import '../../../../exports.dart';

class Indicator extends StatelessWidget {
  final bool isActive;

  const Indicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 158),
      margin: 6.ph, // Responsive margin
      height: 12.h, // Responsive height
      width:  12.w, // Responsive width
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? AppColors.primaryColor : Colors.grey,
      ),
    );
  }
}
