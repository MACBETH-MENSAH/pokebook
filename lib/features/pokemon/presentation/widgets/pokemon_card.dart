import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../theme_picker/presentation/bloc/theme_bloc.dart';
import '../../domain/entities/pokemon.dart';

const Map<String, String> pokemonTypeEmoji = {
  'fire': '🔥',
  'water': '💧',
  'grass': '🌿',
  'electric': '⚡',
  'psychic': '🔮',
  'ice': '❄️',
  'dragon': '🐉',
  'dark': '🌑',
  'fairy': '✨',
  'normal': '🐻',
  'fighting': '🥊',
  'flying': '🦋',
  'poison': '☠️',
  'ground': '🌍',
  'rock': '🪨',
  'bug': '🐞',
  'ghost': '👻',
  'steel': '⚙️',
};

class PokemonCard extends StatefulWidget {
  final PokemonSummary pokemon;
  final VoidCallback onView;

  const PokemonCard({
    super.key,
    required this.pokemon,
    required this.onView,
  });

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  bool _hovering = false;

  // Derived from the Figma measurements: the artwork's bounding box
  // starts ~67px above the white card's own top edge, so it overlaps
  // the card boundary rather than being confined inside it.
  static const double _overlap = 68;
  static const double _grayBoxTopInset = 12;
  static const double _grayBoxHeight = 199;
  static const double _grayBoxHorizontalPadding = 14;
  static const double _artworkHeight = 257;
  static const double _artworkHorizontalPadding = 68;

  @override
  Widget build(BuildContext context) {
    // Exact color currently selected in the Theme Picker.
    //
    // We read ThemeBloc directly instead of using
    // Theme.of(context).colorScheme.primary so the View button
    // does not receive a Material-generated tonal variation.
    final primaryColor = context.select<ThemeBloc, Color>(
          (bloc) => bloc.state.primaryColor,
    );

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _hovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          _hovering = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onView,
        onLongPress: () {
          setState(() {
            _hovering = true;
          });
        },

        // Reserves the overlap space in normal list flow, so this card
        // doesn't visually collide with the one above it — the artwork
        // then renders backward into this reserved space via a negative
        // Positioned offset below.
        child: Padding(
          padding: const EdgeInsets.only(
            top: _overlap,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // White card.
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(27),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 54,
                      offset: const Offset(0, 5.4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: _grayBoxTopInset,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal:
                        _grayBoxHorizontalPadding,
                      ),
                      child: Container(
                        height: _grayBoxHeight,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1F1F1),
                          borderRadius:
                          BorderRadius.circular(20),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    Text(
                      widget.pokemon.name.toLowerCase(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        height: 1.1,
                      ),
                    ),

                    const SizedBox(height: 14),

                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 10,
                      runSpacing: 8,
                      children: widget.pokemon.types
                          .map(
                            (type) => _TypeChip(
                          type: type,
                        ),
                      )
                          .toList(),
                    ),

                    const SizedBox(height: 28),
                  ],
                ),
              ),

              // Artwork — negative top pushes it up into the reserved
              // overlap space above the white card, so the head pokes
              // out past the card's rounded top edge.
              Positioned(
                top: -_overlap,
                left: _artworkHorizontalPadding,
                right: _artworkHorizontalPadding,
                height: _artworkHeight,
                child: CachedNetworkImage(
                  imageUrl: widget.pokemon.imageUrl,
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomCenter,
                  fadeInDuration:
                  const Duration(milliseconds: 150),
                  placeholder: (_, __) {
                    return const Center(
                      child: SizedBox(
                        width: 28,
                        height: 28,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      ),
                    );
                  },
                  errorWidget: (_, __, ___) {
                    return const Center(
                      child: Icon(
                        Icons.image_not_supported_outlined,
                        size: 42,
                      ),
                    );
                  },
                ),
              ),

              // View button appears on hover.
              Positioned(
                top: 12,
                right: 12,
                child: AnimatedOpacity(
                  opacity: _hovering ? 1 : 0,
                  duration:
                  const Duration(milliseconds: 150),
                  child: FilledButton(
                    onPressed: widget.onView,
                    style: FilledButton.styleFrom(
                      // Exact currently selected app theme.
                      backgroundColor: primaryColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      minimumSize: Size.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text('View'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TypeChip extends StatelessWidget {
  final String type;

  const _TypeChip({
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final emoji = pokemonTypeEmoji[type] ?? '';

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 7,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF0F0F0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        '$emoji ${_capitalize(type)}',
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  String _capitalize(String value) {
    if (value.isEmpty) {
      return value;
    }

    return value[0].toUpperCase() +
        value.substring(1);
  }
}