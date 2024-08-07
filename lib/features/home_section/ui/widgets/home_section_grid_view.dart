import 'package:fatto/core/extensions.dart';
import 'package:fatto/features/home_section/ui/widgets/home_section_product.dart';
import 'package:flutter/material.dart';

class HomeSectionGridView extends StatelessWidget {
  const HomeSectionGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 25,
          crossAxisSpacing: 25,
          mainAxisExtent: 197.11.h
        ),
        itemBuilder: (context, index) {
          return const HomeSectionProduct();
        });
  }
}
