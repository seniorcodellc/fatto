import 'package:fatto/features/home_section/ui/home_section.dart';
import 'package:fatto/features/home_section/ui/product35.dart';
import 'package:fatto/splash_screen.dart';

import 'exports.dart';

class FattoApp extends StatelessWidget {
  const FattoApp({super.key});

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
      home:const Product35(),
    );
  }
}
