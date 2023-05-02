import 'package:tradly/theme.dart';
import 'package:flutter/material.dart';

class DashboardCategoryGridView extends StatelessWidget {
  final List<dynamic> categories;

  const DashboardCategoryGridView({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              FadeInImage(
                  fit: BoxFit.cover,
                  placeholder: const AssetImage(
                    "assets/images/placeholder.png",
                  ),
                  image: NetworkImage(
                    "https://picsum.photos/${index + 200}",
                  )),
              Positioned(
                child: Container(
                  color: Colors.black.withOpacity(.6),
                  child: Center(
                    child: Text(
                      categories[index]['name'],
                      style: const TextStyle(color: textLightColor),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      ),
    );
  }
}
