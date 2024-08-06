import 'config/routes/app_router.dart';
import 'exports.dart';
import 'fatto_app.dart';

void main() {
  runApp(
    FattoApp(
      appRouter: FattoRouter(),
    ),
  );
}
