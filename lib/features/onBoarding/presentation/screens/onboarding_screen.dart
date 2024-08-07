import '../../../../exports.dart';
import '../../data/onboarding_model.dart';
import '../widgets/onboarding_slider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static final imagePathList = <String>[
    AppAssets.onboarding1,
    AppAssets.onboarding2,
    AppAssets.onboarding3,
  ];

  static const Map<String, String> onBoardingTexts = {
    'OnBoardingTitle1': AppStrings.onBoarding1Title,
    'OnBoardingSubTitle1': AppStrings.onBoarding1SubTitle,
    'OnBoardingTitle2': AppStrings.onBoarding2Title,
    'OnBoardingSubTitle2': AppStrings.onBoarding2SubTitle,
    'OnBoardingTitle3': AppStrings.onBoarding3Title,
    'OnBoardingSubTitle3': AppStrings.onBoarding3SubTitle,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: OnBoardingSlider(
              onBoardingItems: imagePathList
                  .map(
                    (item) => OnboardingModel(
                      imagePath: item,
                      title: onBoardingTexts[
                          "OnBoardingTitle${(imagePathList.indexOf(item) + 1)}"]!,
                      subTitle: onBoardingTexts[
                          "OnBoardingSubTitle${(imagePathList.indexOf(item) + 1)}"]!,
                    ),
                  )
                  .toList(),
            ),
          ),
          ValueListenableBuilder<int>(
            valueListenable: OnBoardingSlider.selectedImageNotifier,
            builder: (BuildContext context, int value, Widget? child) {
              return Padding(
                padding: getPadding(horizontal: 16), // Responsive padding
                child: Column(
                  children: [
                    SizedBox(
                        height:
                            getVerticalSize(20)), // Responsive vertical space
                    if (value == 0) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Navigate to the last onboarding screen
                              OnBoardingSlider.pageController.jumpToPage(imagePathList.length - 1);
                            },
                            child: Text(
                              AppStrings.skip,
                              style: AppStyles.styleInterSemiBold16
                                  .copyWith(color: AppColors.primaryColor),
                            ),
                          ),
                        ],
                      ),
                      FattoTextButton(
                        buttonText: 'Next',
                        textStyle: AppStyles.styleInterSemiBold16
                            .copyWith(color: AppColors.white),
                        onPressed: () {
                          // Navigate to the next onboarding screen
                          OnBoardingSlider.pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        },
                      ),
                      SizedBox(
                          height:
                              getVerticalSize(16)), // Responsive vertical space
                    ] else if (value == 1 || value == 2) ...[
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: FattoTextButton(
                                    backgroundColor: AppColors.transparent,
                                    borderRadius: 8,
                                    buttonHeight: getVerticalSize(
                                        50), // Responsive height
                                    buttonWidth: getHorizontalSize(
                                        104), // Responsive width
                                    buttonText: 'Back',
                                    textStyle:
                                        AppStyles.styleInterSemiBold16.copyWith(
                                      color: AppColors.primaryColor,
                                    ),
                                    onPressed: () {
                                      // Navigate to the previous onboarding screen
                                      OnBoardingSlider.pageController.previousPage(
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.easeIn,
                                      );
                                    }),
                              ),
                              Flexible(
                                child: FattoTextButton(
                                  borderRadius: 8,
                                  buttonHeight:
                                      getVerticalSize(50), // Responsive height
                                  buttonWidth: getHorizontalSize(
                                    223,
                                  ), // Responsive width
                                  buttonText: 'Next',
                                  textStyle:
                                      AppStyles.styleInterSemiBold16.copyWith(
                                    color: AppColors.white,
                                  ),
                                  onPressed: () {
                                    // Navigate to the next onboarding screen
                                    OnBoardingSlider.pageController.nextPage(
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.easeIn,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: getVerticalSize(20),
                          ), // Responsive vertical space
                        ],
                      ),
                    ],
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
