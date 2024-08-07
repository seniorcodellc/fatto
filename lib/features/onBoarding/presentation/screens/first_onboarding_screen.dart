import 'package:fatto/exports.dart';

class FirstOnBoardingScreen extends StatelessWidget {
  const FirstOnBoardingScreen({super.key});
static final imagePathList = <String> [
  AppAssets.onboarding1,
  AppAssets.onboarding2,
  AppAssets.onboarding3
];
  static final pageController = PageController();
  static int currentPage = 0;
  // static const Map<String,String> onBoardingTexts={
  //   'FirstOnBoardingTitle':AppStrings.onBoarding1Title,
  //       'FirstOnBoardingSubTitle':AppStrings.onBoarding1Title,

  //   'FirstOnBoardingText':AppStrings.onBoarding1Title,
  //   'FirstOnBoardingText':AppStrings.onBoarding1Title,
  //   'FirstOnBoardingText':AppStrings.onBoarding1Title,
  //   'FirstOnBoardingText':AppStrings.onBoarding1Title,

  // };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        child: Column(
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  'Fatto',
                ),
              ),
            ),
            Column(
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }
}
