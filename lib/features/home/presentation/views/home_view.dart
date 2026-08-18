import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/router/app_router.dart';
import '../../../theme_picker/presentation/bloc/theme_bloc.dart';
import '../widgets/hero_section.dart';
import '../widgets/home_search_bar.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  void _goToList(
      BuildContext context, {
        String? searchQuery,
      }) {
    context.router.push(
      PokemonListRoute(
        initialQuery: searchQuery,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Use the actual selected theme color.
    // Do NOT use Theme.of(context).colorScheme.primary here because
    // ColorScheme.fromSeed can generate a slightly different shade.
    final primaryColor = context.select<ThemeBloc, Color>(
          (bloc) => bloc.state.primaryColor,
    );

    final safeTop = MediaQuery.paddingOf(context).top;

    // The Figma artwork group begins at y = 128.
    // SafeArea already contributes safeTop, so compensate for it.
    final topSpacing =
    (128.0 - safeTop).clamp(0.0, 128.0);

    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Stack(
        children: [
          const Positioned.fill(
            child: _PaperBackground(),
          ),

          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                padding: EdgeInsets.fromLTRB(
                  24,
                  topSpacing,
                  24,
                  40,
                ),
                child: Center(
                  child: ConstrainedBox(
                    // 430px Figma frame - 24px on both sides.
                    constraints: const BoxConstraints(
                      maxWidth: 382,
                    ),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.stretch,
                      children: [
                        const HeroSection(),

                        const SizedBox(height: 52),

                        HomeSearchBar(
                          onSubmitted: (query) {
                            _goToList(
                              context,
                              searchQuery: query,
                            );
                          },
                        ),

                        const SizedBox(height: 26),

                        Center(
                          child: InkWell(
                            onTap: () => _goToList(context),
                            borderRadius:
                            BorderRadius.circular(8),
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 8,
                              ),
                              child: Text(
                                'View all',
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight:
                                  FontWeight.w500,
                                  decoration:
                                  TextDecoration.underline,
                                  decorationColor:
                                  primaryColor,
                                  decorationThickness: 1.4,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PaperBackground extends StatelessWidget {
  const _PaperBackground();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _PaperPainter(),
      child: const SizedBox.expand(),
    );
  }
}

class _PaperPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPaint = Paint()
      ..color = const Color(0xFFFAFAFA);

    canvas.drawRect(
      Offset.zero & size,
      backgroundPaint,
    );

    final dotPaint = Paint()
      ..color = const Color(0x0D000000);

    const spacing = 18.0;
    const radius = 0.65;

    for (double y = 4; y < size.height; y += spacing) {
      for (double x = 4; x < size.width; x += spacing) {
        canvas.drawCircle(
          Offset(x, y),
          radius,
          dotPaint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(
      covariant CustomPainter oldDelegate,
      ) {
    return false;
  }
}