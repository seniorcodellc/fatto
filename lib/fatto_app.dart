import 'config/routes/app_router.dart';
import 'config/routes/app_routes.dart';
import 'exports.dart';
import 'features/onBoarding/presintation/screens/first_onboarding_screen.dart';

class FattoApp extends StatelessWidget {
  final FattoRouter appRouter;

  const FattoApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      color: AppColors.primaryColor,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.onBoardingRoute,
      onGenerateRoute: appRouter.generateRoute,
      home: const FirstOnBoardingScreen(),
    );
  }
}
