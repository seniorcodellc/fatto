import 'package:flutter/material.dart';
import 'categories_card.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         CategoriesCard(
          title: 'Ceramic',
          horizentalPadding: 12,
        ),
         CategoriesCard(
          title: 'Clothes',
          horizentalPadding: 22,
        ),
         CategoriesCard(
          title: 'Pottery',
          horizentalPadding: 12,
        ),
         CategoriesCard(
          title: 'Wedding & Social events',
          horizentalPadding: 10,
        ),
      ],
    );
  }
}
