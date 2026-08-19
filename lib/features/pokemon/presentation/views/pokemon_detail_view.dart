import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../theme_picker/presentation/bloc/theme_bloc.dart';
import '../../domain/entities/pokemon.dart';
import '../bloc/pokemon_detail_bloc.dart';
import '../widgets/pokemon_card.dart' show pokemonTypeEmoji;
import '../widgets/stat_bar.dart';

@RoutePage()
class PokemonDetailView extends StatelessWidget {
  final int pokemonId;

  const PokemonDetailView({
    super.key,
    required this.pokemonId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PokemonDetailBloc>()
        ..add(
          PokemonDetailEvent.requested(pokemonId),
        ),
      child: const _PokemonDetailPage(),
    );
  }
}

class _PokemonDetailPage extends StatelessWidget {
  const _PokemonDetailPage();

  @override
  Widget build(BuildContext context) {
    final primaryColor = context.select<ThemeBloc, Color>(
          (bloc) => bloc.state.primaryColor,
    );

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<PokemonDetailBloc, PokemonDetailState>(
          builder: (context, state) {
            if (state.status == DetailStatus.loading) {
              return Center(
                child: CircularProgressIndicator(
                  color: primaryColor,
                ),
              );
            }

            if (state.status == DetailStatus.failure ||
                state.pokemon == null) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text(
                    state.errorMessage ??
                        'Could not load Pokémon.',
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }

            return Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 430,
                ),
                child: _DetailContent(
                  pokemon: state.pokemon!,
                  activeTab: state.activeTab,
                  primaryColor: primaryColor,
                  similar: state.similar,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _DetailContent extends StatelessWidget {
  final Pokemon pokemon;
  final DetailTab activeTab;
  final Color primaryColor;
  final IList<PokemonSummary> similar;

  const _DetailContent({
    required this.pokemon,
    required this.activeTab,
    required this.primaryColor,
    required this.similar,
  });

  @override
  Widget build(BuildContext context) {
    final bottomSafe =
        MediaQuery.paddingOf(context).bottom;

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        final scale =
        (width / 430.0).clamp(0.75, 1.0);

        return Stack(
          children: [
            Positioned.fill(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.only(
                  bottom: 120 + bottomSafe,
                ),
                child: Column(
                  children: [
                    _PokemonHero(
                      pokemon: pokemon,
                      scale: scale,
                      primaryColor: primaryColor,
                    ),

                    SizedBox(height: 29 * scale),

                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24 * scale,
                      ),
                      child: AutoSizeText(
                        _capitalize(pokemon.name),
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        minFontSize: 30,
                        style: TextStyle(
                          fontSize: 49 * scale,
                          height: 1,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF050505),
                          letterSpacing: -1,
                        ),
                      ),
                    ),

                    SizedBox(height: 21 * scale),

                    _PokemonTypes(
                      types: pokemon.types,
                      scale: scale,
                    ),

                    SizedBox(height: 52 * scale),

                    _FigmaDivider(scale: scale),

                    SizedBox(height: 16 * scale),

                    Text(
                      _tabTitle(activeTab),
                      style: TextStyle(
                        fontSize: 21 * scale,
                        height: 1.1,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF090909),
                      ),
                    ),

                    SizedBox(height: 15 * scale),

                    _FigmaDivider(scale: scale),

                    _DetailsBox(
                      pokemon: pokemon,
                      activeTab: activeTab,
                      scale: scale,
                      similar: similar,
                    ),

                    _FigmaDivider(scale: scale),

                    SizedBox(height: 120 * scale),
                  ],
                ),
              ),
            ),

            Positioned(
              left: 20 * scale,
              right: 20 * scale,
              bottom: 18 + bottomSafe,
              child: _TabSelector(
                activeTab: activeTab,
                scale: scale,
              ),
            ),
          ],
        );
      },
    );
  }

  static String _capitalize(String value) {
    if (value.isEmpty) return value;

    return value[0].toUpperCase() +
        value.substring(1).toLowerCase();
  }

  static String _tabTitle(DetailTab tab) {
    switch (tab) {
      case DetailTab.about:
        return 'About';

      case DetailTab.stats:
        return 'Stats';

      case DetailTab.similar:
        return 'Similar';
    }
  }
}

class _PokemonHero extends StatelessWidget {
  final Pokemon pokemon;
  final double scale;
  final Color primaryColor;

  const _PokemonHero({
    required this.pokemon,
    required this.scale,
    required this.primaryColor,
  });

  static const double _figmaWidth = 430;

  static const double _backgroundHeight = 283;

  static const double _pokemonLeft = 94;

  static const double _pokemonTop = 87.76;

  static const double _pokemonWidth = 255;

  static const double _pokemonHeight =
  260.72113037109375;

  static const double _pokemonBottom =
      _pokemonTop + _pokemonHeight;

  @override
  Widget build(BuildContext context) {
    final safeTop =
        MediaQuery.paddingOf(context).top;

    final totalHeroHeight =
        _pokemonBottom * scale;

    return SizedBox(
      width: _figmaWidth * scale,
      height: totalHeroHeight,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: _figmaWidth * scale,
            height: _backgroundHeight * scale,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft:
                Radius.circular(24 * scale),
                bottomRight:
                Radius.circular(24 * scale),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: primaryColor,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    height: 7 * scale,
                    child: const IgnorePointer(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0x1A000000),
                              Color(0x10000000),
                              Color(0x00000000),
                            ],
                            stops: [
                              0.0,
                              0.45,
                              1.0,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            left: 20 * scale,
            top: safeTop + (16 * scale),
            child: Material(
              color: Colors.white,
              elevation: 6,
              shadowColor:
              Colors.black.withOpacity(0.18),
              borderRadius:
              BorderRadius.circular(7 * scale),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                borderRadius:
                BorderRadius.circular(7 * scale),
                child: SizedBox(
                  width: 40 * scale,
                  height: 40 * scale,
                  child: Icon(
                    Icons.arrow_back,
                    size: 25 * scale,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),

          /*
           * Pokémon artwork.
           *
           * The model now uses PokeAPI official-artwork,
           * which is PNG, so CachedNetworkImage is used
           * directly instead of SvgPicture.network.
           */
          Positioned(
            left: _pokemonLeft * scale,
            top: _pokemonTop * scale,
            width: _pokemonWidth * scale,
            height: _pokemonHeight * scale,
            child: CachedNetworkImage(
              imageUrl: pokemon.imageUrl,
              width: _pokemonWidth * scale,
              height: _pokemonHeight * scale,
              fit: BoxFit.contain,
              alignment: Alignment.center,
              fadeInDuration:
              const Duration(milliseconds: 150),
              placeholder: (_, __) {
                return const SizedBox.expand();
              },
              errorWidget: (_, __, ___) {
                return CachedNetworkImage(
                  imageUrl:
                  'https://cdn.jsdelivr.net/gh/PokeAPI/sprites/sprites/pokemon/other/official-artwork/${pokemon.id}.png',
                  width: _pokemonWidth * scale,
                  height: _pokemonHeight * scale,
                  fit: BoxFit.contain,
                  errorWidget: (_, __, ___) {
                    return Icon(
                      Icons.catching_pokemon,
                      size: 110 * scale,
                      color: Colors.white,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _PokemonTypes extends StatelessWidget {
  final Iterable<String> types;
  final double scale;

  const _PokemonTypes({
    required this.types,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10 * scale,
      runSpacing: 8 * scale,
      children: types.map((type) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: 14 * scale,
            vertical: 7 * scale,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFF0F0F0),
            borderRadius:
            BorderRadius.circular(20 * scale),
          ),
          child: Text(
            '${pokemonTypeEmoji[type] ?? ''} ${_capitalize(type)}',
            style: TextStyle(
              fontSize: 16 * scale,
              height: 1,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        );
      }).toList(),
    );
  }

  String _capitalize(String value) {
    if (value.isEmpty) return value;

    return value[0].toUpperCase() +
        value.substring(1).toLowerCase();
  }
}

class _FigmaDivider extends StatelessWidget {
  final double scale;

  const _FigmaDivider({
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 390 * scale,
        height:
        1.529411792755127 * scale,
        child: const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                Color(0xFFFFFFFF),
                Color(0x45D9D9D9),
                Color(0xFFFFFFFF),
              ],
              stops: [
                0.0,
                0.453,
                1.0,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DetailsBox extends StatelessWidget {
  final Pokemon pokemon;
  final DetailTab activeTab;
  final double scale;
  final IList<PokemonSummary> similar;

  const _DetailsBox({
    required this.pokemon,
    required this.activeTab,
    required this.scale,
    required this.similar,
  });

  @override
  Widget build(BuildContext context) {
    /*
     * IMPORTANT:
     *
     * This used to have:
     *
     * height: 133.424...
     *
     * Raticate has enough ability content to exceed that
     * height, which caused the RenderFlex overflow.
     *
     * We now keep the Figma height as a MINIMUM instead
     * of forcing every Pokémon into exactly 133px.
     */
    return Container(
      width: 389.5148010253906 * scale,
      constraints: BoxConstraints(
        minHeight: 133.42495727539062 * scale,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 14 * scale,
      ),
      child: switch (activeTab) {
        DetailTab.about => _AboutTab(
          pokemon: pokemon,
          scale: scale,
        ),

        DetailTab.stats => _StatsTab(
          pokemon: pokemon,
          scale: scale,
        ),

        DetailTab.similar => _SimilarTab(
          similar: similar,
          scale: scale,
        ),
      },
    );
  }
}

class _AboutTab extends StatelessWidget {
  final Pokemon pokemon;
  final double scale;

  const _AboutTab({
    required this.pokemon,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 260 * scale,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _AboutRow(
              label: 'Height',
              scale: scale,
              child: Text(
                '${pokemon.heightInMeters.toStringAsFixed(1)}m',
                style: _valueStyle(scale),
              ),
            ),

            SizedBox(height: 16 * scale),

            _AboutRow(
              label: 'Weight',
              scale: scale,
              child: Text(
                '${pokemon.weightInKg.toStringAsFixed(1)}kg',
                style: _valueStyle(scale),
              ),
            ),

            SizedBox(height: 16 * scale),

            _AboutRow(
              label: 'Abilities',
              scale: scale,
              crossAxisAlignment:
              CrossAxisAlignment.start,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: pokemon.abilities
                    .map(
                      (ability) => Padding(
                    padding: EdgeInsets.only(
                      bottom: 3 * scale,
                    ),
                    child: Text(
                      '•  ${_formatAbility(ability)}',
                      style: _valueStyle(scale),
                    ),
                  ),
                )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static TextStyle _valueStyle(
      double scale,
      ) {
    return TextStyle(
      fontSize: 16 * scale,
      height: 1.2,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }

  static String _formatAbility(
      String value,
      ) {
    return value
        .replaceAll('-', ' ')
        .toLowerCase();
  }
}

class _AboutRow extends StatelessWidget {
  final String label;
  final Widget child;
  final double scale;
  final CrossAxisAlignment crossAxisAlignment;

  const _AboutRow({
    required this.label,
    required this.child,
    required this.scale,
    this.crossAxisAlignment =
        CrossAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        SizedBox(
          width: 96 * scale,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16 * scale,
              height: 1.2,
              fontWeight: FontWeight.w400,
              color:
              const Color(0xFF1F1F1F),
            ),
          ),
        ),

        SizedBox(width: 14 * scale),

        Expanded(
          child: child,
        ),
      ],
    );
  }
}

class _StatsTab extends StatelessWidget {
  final Pokemon pokemon;
  final double scale;

  const _StatsTab({
    required this.pokemon,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    /*
     * No nested SingleChildScrollView here.
     * The whole detail page already scrolls.
     */
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 18 * scale,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: pokemon.baseStats.entries
            .map(
              (entry) => Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5 * scale,
            ),
            child: StatBar(
              label: entry.key,
              value: entry.value,
              max: 200,
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}

class _SimilarTab extends StatelessWidget {
  final IList<PokemonSummary> similar;
  final double scale;

  const _SimilarTab({
    required this.similar,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    if (similar.isEmpty) {
      return Center(
        child: Padding(
          padding: EdgeInsets.all(20 * scale),
          child: Text(
            'No similar Pokémon found in the current set.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color:
              const Color(0xFF777777),
              fontSize: 16 * scale,
            ),
          ),
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: similar.map((summary) {
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: 6 * scale,
          ),
          child: InkWell(
            borderRadius:
            BorderRadius.circular(16 * scale),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) =>
                      PokemonDetailView(
                        pokemonId: summary.id,
                      ),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12 * scale,
                vertical: 8 * scale,
              ),
              decoration: BoxDecoration(
                color:
                const Color(0xFFF6F6F6),
                borderRadius:
                BorderRadius.circular(
                  16 * scale,
                ),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius:
                    BorderRadius.circular(
                      12 * scale,
                    ),
                    child: CachedNetworkImage(
                      imageUrl:
                      summary.imageUrl,
                      width: 48 * scale,
                      height: 48 * scale,
                      fit: BoxFit.contain,
                      errorWidget:
                          (_, __, ___) =>
                          Icon(
                            Icons.catching_pokemon,
                            size: 32 * scale,
                          ),
                    ),
                  ),

                  SizedBox(width: 12 * scale),

                  Expanded(
                    child: Text(
                      _capitalize(
                        summary.name,
                      ),
                      style: TextStyle(
                        fontSize: 16 * scale,
                        fontWeight:
                        FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  Icon(
                    Icons.chevron_right,
                    size: 20 * scale,
                    color: Colors.black38,
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  String _capitalize(String value) {
    if (value.isEmpty) return value;

    return value[0].toUpperCase() +
        value.substring(1).toLowerCase();
  }
}

class _TabSelector extends StatelessWidget {
  final DetailTab activeTab;
  final double scale;

  const _TabSelector({
    required this.activeTab,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60 * scale,
      padding: EdgeInsets.all(8 * scale),
      decoration: BoxDecoration(
        color: const Color(0xFFE9E9E9),
        borderRadius:
        BorderRadius.circular(32 * scale),
        boxShadow: [
          BoxShadow(
            color:
            Colors.black.withOpacity(0.06),
            blurRadius: 6,
            offset: const Offset(0, -1),
          ),
        ],
      ),
      child: Row(
        children: DetailTab.values.map((tab) {
          final isActive =
              tab == activeTab;

          return Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                context
                    .read<PokemonDetailBloc>()
                    .add(
                  PokemonDetailEvent
                      .tabChanged(tab),
                );
              },
              child: AnimatedContainer(
                duration:
                const Duration(
                  milliseconds: 160,
                ),
                curve: Curves.easeOut,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isActive
                      ? Colors.white
                      : Colors.transparent,
                  borderRadius:
                  BorderRadius.circular(
                    26 * scale,
                  ),
                  boxShadow: isActive
                      ? [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(
                        0.10,
                      ),
                      blurRadius: 12,
                      offset:
                      const Offset(
                        0,
                        3,
                      ),
                    ),
                  ]
                      : const [],
                ),
                child: Text(
                  _title(tab),
                  style: TextStyle(
                    fontSize: 18 * scale,
                    height: 1,
                    fontWeight:
                    FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  String _title(DetailTab tab) {
    switch (tab) {
      case DetailTab.about:
        return 'About';

      case DetailTab.stats:
        return 'Stats';

      case DetailTab.similar:
        return 'Similar';
    }
  }
}