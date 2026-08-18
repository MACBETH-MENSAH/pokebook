import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../theme_picker/presentation/bloc/theme_bloc.dart';

class PokebookWordmark extends StatelessWidget {
  final double fontSize;

  const PokebookWordmark({
    super.key,
    this.fontSize = 22,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = context.select<ThemeBloc, Color>(
          (bloc) => bloc.state.primaryColor,
    );

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          height: 1,
          letterSpacing: -1,
        ),
        children: [
          const TextSpan(
            text: 'Poké',
            style: TextStyle(
              color: Color(0xFF000000),
            ),
          ),
          TextSpan(
            text: 'book',
            style: TextStyle(
              color: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}