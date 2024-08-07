import 'package:fatto/features/home_section/ui/product35.dart';
import 'package:flutter/services.dart';
import 'config/routes/app_router.dart';
import 'config/routes/name_routes.dart';
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
        statusBarIconBrightness: Brightness.dark, // Set the status bar icon color to light
      ),
      child: MaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        color: AppColors.primaryColor,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: Routes.registerRoute,
        onGenerateRoute: appRouter.generateRoute,
        home: const Product35(),
      ),
    );
  }
}
