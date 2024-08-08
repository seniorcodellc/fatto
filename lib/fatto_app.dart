


import 'exports.dart';

class FattoApp extends StatelessWidget {
  final AppRouter appRouter;

  const FattoApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Set the status bar color
        statusBarIconBrightness:
            Brightness.dark, // Set the status bar icon color to light
      ),
      child: MaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        color: AppColors.primaryColor,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: AppColors.white,
          useMaterial3: true,
        ),
    
      initialRoute: Routes.onBoardingRoute,
      onGenerateRoute: appRouter.generateRoute,
      home:  const OnboardingScreen(),
      )
    );
  }
}