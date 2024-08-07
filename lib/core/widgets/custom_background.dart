
import '../../exports.dart';

class CustomBackground extends StatelessWidget {
  final Widget child;
  final bool isTransparent;

  const CustomBackground({required this.child, this.isTransparent = true, super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: isTransparent ? AppColors.transparent : AppColors.primaryColor,
          statusBarIconBrightness: isTransparent ? Brightness.dark : Brightness.light),
      child: Scaffold(backgroundColor: AppColors.white, body: child),
    );
  }
}
