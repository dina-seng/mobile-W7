import 'package:flutter/material.dart';

import 'widgets/favorite_card.dart';

class Ex2Screen extends StatelessWidget {
  const Ex2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorite caert ')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FavoriteCard(isFavorite: true),
            SizedBox(height: 40),
            FavoriteCard(isFavorite: false),
            SizedBox(height: 40),
            FavoriteCard(isFavorite: true),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
