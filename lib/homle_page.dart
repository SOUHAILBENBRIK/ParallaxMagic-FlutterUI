import 'package:flutter/material.dart';

import 'anime_list_item.dart';
import 'const.dart';

class ExampleParallax extends StatelessWidget {
  const ExampleParallax({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final anime in ConstApp.animes)
            AnimeListItem(
              imageUrl: anime.imageUrl,
              name: anime.name,
              country: anime.place,
            ),
        ],
      ),
    );
  }
}
