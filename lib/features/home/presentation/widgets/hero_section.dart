import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'pokebook_wordmark.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  static const double _artworkWidth = 316;
  static const double _artworkHeight = 212;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: _artworkWidth,
            height: _artworkHeight,
            child: Image.asset(
              'assets/images/home_pokemon_group.png',
              width: _artworkWidth,
              height: _artworkHeight,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
              gaplessPlayback: true,
            ),
          ),
        ),

        const SizedBox(height: 27),

        const PokebookWordmark(
          fontSize: 46,
        ),

        const SizedBox(height: 22),

        /*
         * Render the description as TWO independent lines.
         *
         * This prevents Flutter Web from wrapping the first
         * sentence into two physical lines and clipping the
         * second sentence.
         */
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 2),
          child: Column(
            children: [
              AutoSizeText(
                'Largest Pokémon index with information about',
                maxLines: 1,
                minFontSize: 13,
                maxFontSize: 17,
                stepGranularity: 0.1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
                style: TextStyle(
                  fontSize: 17,
                  height: 1.45,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF777777),
                ),
              ),

              AutoSizeText(
                'every Pokemon you can think of.',
                maxLines: 1,
                minFontSize: 13,
                maxFontSize: 17,
                stepGranularity: 0.1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
                style: TextStyle(
                  fontSize: 17,
                  height: 1.45,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF777777),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}