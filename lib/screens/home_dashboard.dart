import 'package:tradly/widgets/dashboard_cards_list.dart';
import 'package:tradly/widgets/dashboard_category_grid_view.dart';
import 'package:tradly/widgets/shopping_cart_icon.dart';
import 'package:flutter/material.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    final List<dynamic> categories = [
      {'name': "Beverages"},
      {'name': "Bakery"},
      {'name': "Vegetables"},
      {'name': "Fruit"},
      {'name': "Egg"},
      {'name': "Frozen veg"},
      {'name': "Homecare"},
      {'name': "Pet Care"},
    ];
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: DashboardCardsList(),
        ),
        DashboardCategoryGridView(
          categories: categories,
        )
      ],
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Groceries'),
    //     actions: [
    //       IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
    //       const ShoppingCartIcon(
    //         count: 10,
    //       )
    //     ],
    //   ),
    //   body: SafeArea(
    //     child: Column(
    //       children: [
    //         const DashboardCardsList(),
    //         DashboardCategoryGridView(
    //           categories: categories,
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
