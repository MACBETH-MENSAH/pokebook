import 'package:flutter/material.dart';

import 'pokebook_wordmark.dart';

/// Small icon-cluster mark (Figma shows a couple of overlapping Pokémon
/// sprites to the left of the wordmark). Sized down vs. the hero art.
class BrandHeader extends StatelessWidget {
  final double logoSize;
  final double fontSize;

  const BrandHeader({super.key, this.logoSize = 36, this.fontSize = 22});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: logoSize,
          height: logoSize,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                child: Image.network(
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png', // Ivysaur
                  width: logoSize * 0.7,
                  errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                ),
              ),
              Positioned(
                right: -4,
                top: 0,
                child: Image.network(
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png', // Charizard
                  width: logoSize * 0.75,
                  errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        PokebookWordmark(fontSize: fontSize),
      ],
    );
  }
}
