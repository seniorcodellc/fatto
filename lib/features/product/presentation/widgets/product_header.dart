import 'package:fatto/exports.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.75,
      child: Stack(
        children: [
          const Positioned(
            child: ProductSliderWidget(),
          ),
          // Buttons
          Positioned(
            left: 16,
            top: 60,
            child: CustomIconButton(
              onTap: () {
                Navigator.pop(context);
              },
              icon: AppAssets.back,
            ),
          ),
          Positioned(
            right: 16,
            top: 60,
            child: CustomIconButton(
              onTap: () {},
              icon: AppAssets.shoppingCart,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductSliderWidget extends StatefulWidget {
  const ProductSliderWidget({
    super.key,
  });

  @override
  State<ProductSliderWidget> createState() => _ProductSliderWidgetState();
}

class _ProductSliderWidgetState extends State<ProductSliderWidget> {
  int currentIndex = 0;
  final List<String> images = [
    AppAssets.brownCandy,
    AppAssets.productBag,
    AppAssets.promotionFashion,
    AppAssets.productBag,
    AppAssets.productBag,
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          previousImage();
        } else if (details.primaryVelocity! < 0) {
          nextImage();
        }
      },
      child: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              width: double.infinity,
              height: screenHeight * 0.75,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(images[currentIndex]),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(6.50),
                ),
              ),
            ),
            Positioned(
              left: screenWidth * 0.04,
              bottom: screenHeight * 0.01,
              child: Container(
                width: 50,
                height: 18,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(
                      6.50,
                    ),
                  ),
                ),
                child: Center(
                  child: Text('${currentIndex + 1}/5',
                      style: AppStyles.styleInterRegular11
                          .copyWith(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void nextImage() {
    setState(() {
      currentIndex = (currentIndex + 1) % images.length;
    });
  }

  void previousImage() {
    setState(() {
      currentIndex = (currentIndex - 1 + images.length) % images.length;
    });
  }
}
