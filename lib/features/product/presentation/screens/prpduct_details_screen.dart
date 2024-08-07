import 'package:fatto/exports.dart';
import 'package:fatto/features/product/presentation/widgets/product_details_item.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductHeader(),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: ProductDetailsItem(),
            ),
            ProductListView(),
          ],
        ),
      ),
    );
  }
}

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth * 0.4;
    final itemHeight = itemWidth * 1.6;

    return SizedBox(
      height: itemHeight,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: SizedBox(
              width: itemWidth,
              child: const ProductListViewItem(),
            ),
          );
        },
      ),
    );
  }
}
