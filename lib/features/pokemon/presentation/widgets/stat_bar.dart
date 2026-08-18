import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../theme_picker/presentation/bloc/theme_bloc.dart';

class StatBar extends StatelessWidget {
  final String label;
  final int value;
  final int max;

  const StatBar({
    super.key,
    required this.label,
    required this.value,
    required this.max,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor =
    context.select<ThemeBloc, Color>(
          (bloc) => bloc.state.primaryColor,
    );

    final fraction =
    (value / max).clamp(0.0, 1.0);

    return Row(
      children: [
        SizedBox(
          width: 78,
          child: Text(
            _formatLabel(label),
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF555555),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

        SizedBox(
          width: 38,
          child: Text(
            '$value',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        Expanded(
          child: ClipRRect(
            borderRadius:
            BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: fraction,
              minHeight: 8,
              backgroundColor:
              const Color(0xFFEAEAEA),
              valueColor:
              AlwaysStoppedAnimation<Color>(
                primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  String _formatLabel(String key) {
    switch (key) {
      case 'hp':
        return 'HP';
      case 'attack':
        return 'Attack';
      case 'defense':
        return 'Defense';
      case 'special-attack':
        return 'Sp. Atk';
      case 'special-defense':
        return 'Sp. Def';
      case 'speed':
        return 'Speed';
      default:
        return key;
    }
  }
}