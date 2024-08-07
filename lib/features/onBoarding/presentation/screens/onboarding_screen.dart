import '../../../../config/routes/app_routes_helper.dart';
import '../../../../core/utils/size_utils.dart';
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
                   20.vs, // Responsive vertical space
                    if (value == 0) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Navigate to the last onboarding screen
                              OnBoardingSlider.pageController
                                  .jumpToPage(imagePathList.length - 1);
                            },
                            child: Text(
                              AppStrings.skip,
                              style: AppStyles.styleInterSemiBold16
                                  .copyWith(color: AppColors.primaryColor),
                            ),
                          ),
                        ],
                      ),
                      CustomButton(
                        text: 'Next',
                        onPressed: () {
                          // Navigate to the next onboarding screen
                          OnBoardingSlider.pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        },
                      ),
                      16.vs, // Responsive vertical space
                    ] else if (value == 1 || value == 2) ...[
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 1,
                                child: CustomButton(
                                    backgroundColor: AppColors.transparent,
                                    text: 'Back',
                                    borderColor:AppColors.transparent,
                                    textColor: AppColors.primaryColor,
                                    onPressed: () {
                                      // Navigate to the previous onboarding screen
                                      OnBoardingSlider.pageController
                                          .previousPage(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeIn,
                                      );
                                    }),
                              ),
                              Expanded(
                                flex: 2,
                                child: CustomButton(
                                  borderRadius: 8.r,
                                  text: 'Next',

                                  onPressed: () {
                                    // Navigate to the next onboarding screen
                                    // OnBoardingSlider.pageController.nextPage(
                                    //   duration:
                                    //       const Duration(milliseconds: 300),
                                    //   curve: Curves.easeIn,
                                    // );
                                    push(context:context, route: Routes.loginRoute);
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
