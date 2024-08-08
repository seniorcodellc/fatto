import '../../../../exports.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double size = screenWidth * 0.1;
    double spacing = size * 0.071;

    return SizedBox(
      width: size * 4 + spacing * 3,
      height: size,
      child: Stack(
        children: [
          CircleWidget(
            left: 0,
            size: size,
            spacing: spacing,
            borderColor: const Color(0xFFC8C8C8),
            fillColor: const Color(0xFFF68D8D),
          ),
          CircleWidget(
            left: size + spacing,
            size: size,
            spacing: spacing,
            borderColor: const Color(0xFFC8C8C8),
            fillColor: const Color(0xFF8D98F6),
          ),
          CircleWidget(
            left: (size + spacing) * 2,
            size: size,
            spacing: spacing,
            borderColor: AppColors.lightSilver,
            fillColor: AppColors.charcoal,
          ),
          CircleWidget(
            left: (size + spacing) * 3,
            size: size,
            spacing: spacing,
            borderColor: const Color(0xFFC8C8C8),
            fillColor: const Color(0xFFDFDFDF),
          ),
        ],
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  final double left;
  final double size;
  final double spacing;
  final Color borderColor;
  final Color fillColor;

  const CircleWidget({
    super.key,
    required this.left,
    required this.size,
    required this.spacing,
    required this.borderColor,
    required this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: 0,
      child: SizedBox(
        width: size,
        height: size,
        child: Stack(
          children: [
            Container(
              width: size,
              height: size,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(width: 1, color: borderColor),
                ),
              ),
            ),
            Positioned(
              left: spacing,
              top: spacing,
              child: Container(
                width: size - 2 * spacing,
                height: size - 2 * spacing,
                decoration: ShapeDecoration(
                  color: fillColor,
                  shape: const OvalBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
