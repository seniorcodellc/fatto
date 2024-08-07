import '../../../../exports.dart';
import '../../data/onboarding_model.dart';

class OnBoardingSlider extends StatefulWidget {
  final List<OnboardingModel> onBoardingItems;
  static final selectedImageNotifier = ValueNotifier<int>(0);
  static final PageController pageController = PageController();

  const OnBoardingSlider({super.key, required this.onBoardingItems});

  @override
  State<OnBoardingSlider> createState() => _OnBoardingSliderState();
}

class _OnBoardingSliderState extends State<OnBoardingSlider> {
  @override
  void dispose() {
    OnBoardingSlider.selectedImageNotifier.dispose();
    OnBoardingSlider.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: OnBoardingSlider.selectedImageNotifier,
      builder: (BuildContext context, int value, Widget? child) {
        return Column(
          children: [
            Expanded(
              child: PageView(
                controller: OnBoardingSlider.pageController,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  OnBoardingSlider.selectedImageNotifier.value = index;
                },
                children: widget.onBoardingItems.map((item) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        item.imagePath,
                        height: getVerticalSize(369),
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(height: getVerticalSize(67)),
                      Padding(
                        padding: getPadding(horizontal: 16),
                        child: Column(
                          children: [
                            Text(
                              item.title,
                              style: AppStyles.styleInterBold24,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: getVerticalSize(27)),
                            Text(
                              item.subTitle,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: getVerticalSize(72)),
                            if (widget.onBoardingItems.length > 1)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: widget.onBoardingItems
                                    .asMap()
                                    .entries
                                    .map((entry) {
                                  int index = entry.key;
                                  return buildIndicator(index == value);
                                }).toList(),
                              ),
                          ],
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 158),
      margin: EdgeInsets.symmetric(horizontal: getHorizontalSize(6)),
      height: getVerticalSize(8),
      width: isActive ? getHorizontalSize(12) : getHorizontalSize(8),
      decoration: BoxDecoration(
        color: isActive ? AppColors.primaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
