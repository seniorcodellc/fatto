import 'package:fatto/exports.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductHeader(),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: ProductItem(),
          ),
        ],
      ),
    );
  }
}
