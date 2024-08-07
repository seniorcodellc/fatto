import '../../../../exports.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42 * 4 + 3 * 3,
      height: 42,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 42,
              height: 42,
              decoration: const ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                ),
              ),
            ),
          ),
          Positioned(
            left: 3,
            top: 3,
            child: Container(
              width: 36,
              height: 36,
              decoration: const ShapeDecoration(
                color: Color(0xFFF68D8D),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 45,
            top: 0,
            child: SizedBox(
              width: 42,
              height: 42,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: const ShapeDecoration(
                        shape: OvalBorder(
                          side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 3,
                    top: 3,
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: const ShapeDecoration(
                        color: Color(0xFF8D98F6),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 90,
            top: 0,
            child: SizedBox(
              width: 42,
              height: 42,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: const ShapeDecoration(
                        shape: OvalBorder(
                          side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 3,
                    top: 3,
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: const ShapeDecoration(
                        color: Color(0xFF161616),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 135,
            top: 0,
            child: SizedBox(
              width: 42,
              height: 42,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: const ShapeDecoration(
                        shape: OvalBorder(
                          side: BorderSide(width: 1, color: Color(0xFFC8C8C8)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 3,
                    top: 3,
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFDFDFDF),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
