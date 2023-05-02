import 'package:tradly/theme.dart';
import 'package:flutter/material.dart';

class ShoppingCartIcon extends StatelessWidget {
  final int count;
  const ShoppingCartIcon({super.key, this.count = 0});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        Positioned(
          top: 5,
          right: 5,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            constraints: const BoxConstraints(minHeight: 20, minWidth: 20),
            child: Text(
              count.toString(),
              style: const TextStyle(color: textLightColor, fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
